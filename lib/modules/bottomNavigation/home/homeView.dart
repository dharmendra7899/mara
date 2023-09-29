import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/modules/bottomNavigation/home/homeController.dart';
import 'package:mara/modules/drawerWidget/drawerView.dart';
import 'package:mara/utils/appHelper/appDimensions.dart';
import 'package:mara/utils/images.dart';

import '../../../utils/appHelper/appFontFamily.dart';
import '../../../utils/appHelper/appHelperFunction.dart';
import '../../../utils/button.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List clockDataList = [
    ["English", "Left 1 Days"],
    ["Public-adam", "Left 5 Days"],
    ["Hindi", "Left 10 Days"],
    ["Physics", "Left 13 Days"],
    ["Math", "Left 18 Days"],
    ["Math", "Left 18 Days"],
    ["Math", "Left 18 Days"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKeyldKey,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColorDark,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      drawer: LeftDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        elevation: 3,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColorDark.withOpacity(0.90),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Image.asset(
              ConstantImage.notification,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDimensions().vSpace5(),
              CustomButton(
                onStartNowClick: () {
                  AppHelperFunction().hideKeyBoard();
                },
                textColor: Theme.of(context).scaffoldBackgroundColor,
                buttonText: "Advertisement",
                startColor: Theme.of(context).hintColor,
                endColor: Theme.of(context).hintColor,
              ),
              AppDimensions().vSpace25(),
              clockList()
              /*   Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        width: 1, color: Theme.of(context).highlightColor)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Theme.of(context).highlightColor,
                  style: AppFontFamily().roboto.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).highlightColor,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Theme.of(context).scaffoldBackgroundColor,
                      filled: false,
                      hintText: "Search...",
                      hintStyle: AppFontFamily().roboto.copyWith(
                          fontSize: 16,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context).highlightColor,
                      ),
                      suffixIcon: Image.asset(ConstantImage.filter)),
                ),
              ),
              AppDimensions().vSpace15(),
              bannerViw(context),
              AppDimensions().vSpace15(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 18,
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See all",
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 15,
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              AppDimensions().vSpace5(),
              CategoryWidget(),
              AppDimensions().vSpace15(),
              Text(
                "Neque porro",
                style: AppFontFamily().roboto.copyWith(
                    fontSize: 18,
                    color: Theme.of(context).highlightColor,
                    fontWeight: FontWeight.w600),
              ),
              AppDimensions().vSpace10(),
              ProductWidget(),*/
            ],
          ),
        ),
      ),
    );
  }

  Widget clockList() {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (homeController) {
          return ListView.builder(
              itemCount: clockDataList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 75,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: AppHelperFunction().boxShadow(blurRadius: 10),
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          homeController.startTimer();
                        },
                        child: Container(
                          width: 80,
                          height: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent),
                          child: Center(
                            child: Text(
                              "IN",
                              style: AppFontFamily().roboto.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: AppDimensions().h25),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Theme.of(context).highlightColor)),
                            child: Center(
                              child: Text(
                                "${clockDataList[index][0]}",
                                overflow: TextOverflow.ellipsis,
                                style: AppFontFamily().roboto.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).highlightColor,
                                    fontSize: AppDimensions().h15),
                              ),
                            ),
                          ),
                          AppDimensions().vSpace5(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Text(
                                  ("${homeController.start} Left"),
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFontFamily().roboto.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 80,
                          height: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                          child: Center(
                            child: Text(
                              "OUT",
                              style: AppFontFamily().roboto.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: AppDimensions().h25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
  }

  Widget bannerViw(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 144,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color(0xffA415A6),
            Color(0xff1C62C0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Finding the Perfect \nAttendance for Your Days",
                    textAlign: TextAlign.center,
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 18,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                AppDimensions().vSpace20(),
                Container(
                  height: 32,
                  width: 113,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffFFA800),
                        Color(0xffFFA800),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    "Make Dream",
                    textAlign: TextAlign.center,
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 16,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            ConstantImage.dum,
            width: 100,
          ),
        ],
      ),
    );
  }
}
