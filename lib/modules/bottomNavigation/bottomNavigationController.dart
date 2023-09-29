import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/modules/bottomNavigation/attendance/attendanceView.dart';
import 'package:mara/modules/bottomNavigation/report/reportView.dart';

import 'home/homeView.dart';

class BottomNavigationController extends GetxController implements GetxService {
  RxInt currentIndex = 0.obs;
  RxBool isFirst = false.obs;
  RxList<Widget> screen =
      [HomeView(), const ReportView(), const AttendanceView()].obs;
  var pageController = PageController().obs;
  RxBool hideBottomNavigationBar = false.obs;

  void setPage(int pageIndex) {
    pageController.value.jumpToPage(pageIndex);
    currentIndex.value = pageIndex;
    // if (pageIndex == 1 && !AppStorage().getLoginSate()) {
    //   hideBottomNavigationBar.value = true;
    // } else {
    //   hideBottomNavigationBar.value = false;
    // }
    update();
  }
}
