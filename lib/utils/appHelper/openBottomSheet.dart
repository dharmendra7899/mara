import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenBottomSheet {
  void showBottomSheet({
    required Widget widget,
    Color barrierColor = Colors.black54,//const Color(0xff9E9EA1),
    Color backgroundColor = Colors.white,
    bool isDismissible = true,
    bool enableDrag = true,
    bool ignoreSafeArea = true,
    bool isScrollControlled = true,
    bool useRootNavigator = true,
    double rightRadius = 20,
    double leftRadius = 20,
  }) =>
      Get.bottomSheet(widget,
          barrierColor: barrierColor,
          isDismissible: isDismissible,
          backgroundColor: backgroundColor,
          enableDrag: enableDrag,
          ignoreSafeArea: ignoreSafeArea,
          isScrollControlled: isScrollControlled,
          useRootNavigator: useRootNavigator,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              rightRadius,
            ),
            topLeft: Radius.circular(
              leftRadius,
            ),
          )));
}
