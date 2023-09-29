import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/appHelper/appFontFamily.dart';
import '../../utils/images.dart';
import 'bottomNavigationController.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({Key? key}) : super(key: key);

  final BottomNavigationController _bottomNavigationController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
        init: BottomNavigationController(),
        builder: (bottomNavigationController) {
          return WillPopScope(
            onWillPop: () async {
              if (_bottomNavigationController.currentIndex.value != 0) {
                _bottomNavigationController.setPage(0);
                return false;
              } else {
                return true;
              }
            },
            child: Scaffold(
              body: PageView.builder(
                controller: _bottomNavigationController.pageController.value,
                itemCount: _bottomNavigationController.screen.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return _bottomNavigationController
                      .screen[_bottomNavigationController.currentIndex.value];
                },
              ),
              bottomNavigationBar: BottomNavigationBar(
                enableFeedback: true,
                elevation: 5,
                selectedItemColor: Theme.of(context).primaryColor,
                unselectedItemColor: Colors.black,
                showUnselectedLabels: true,
                currentIndex: _bottomNavigationController.currentIndex.value,
                type: BottomNavigationBarType.fixed,
                items:
                    _getBottomWidget(_bottomNavigationController.isFirst.value),
                onTap: (int index) {
                  _bottomNavigationController.setPage(index);
                },
                backgroundColor: Theme.of(context).hoverColor,
                selectedLabelStyle: AppFontFamily().roboto.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Theme.of(context).primaryColor),
                unselectedLabelStyle: AppFontFamily().roboto.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black),
              ),
            ),
          );
        });
  }

  BottomNavigationBarItem _barItem(String icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        height: 25,
        width: 25,
      ),
      label: label,
    );
  }

  List<BottomNavigationBarItem> _getBottomWidget(bool isSingleVendor) {
    List<BottomNavigationBarItem> list = [];
    list.add(_barItem(ConstantImage.home, 'Home', 0));
    list.add(_barItem(ConstantImage.report, "Report", 1));
    list.add(_barItem(ConstantImage.attendance, 'Attendance', 2));
    // list.add(_barItem(ConstantImage.service, 'Service', 3));
    return list;
  }
}
