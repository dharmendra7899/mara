import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroScreenController extends GetxController {
  PageController controller = PageController();
  int currentIndexOfPage = 0;

  void changePageIndex({required int index}) {
    currentIndexOfPage = index;
    update();
  }
}
