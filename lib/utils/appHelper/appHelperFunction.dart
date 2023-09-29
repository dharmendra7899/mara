import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'appDimensions.dart';
import 'appFontFamily.dart';

class AppHelperFunction {
  void appPrint({required String val}) {
    if (kDebugMode) {
      print(val);
    }
  }

  void showGoodSnackBar({required String message}) {
    Get.closeAllSnackbars();
    Get.showSnackbar(GetSnackBar(
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: AppFontFamily().roboto.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Theme.of(Get.context!).scaffoldBackgroundColor),
      ),
      backgroundColor: Theme.of(Get.context!).hoverColor,
      duration: const Duration(seconds: 2),
      isDismissible: true,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      snackPosition: SnackPosition.TOP,
      borderRadius: AppDimensions().h30,
      maxWidth: Get.width / 1.3,
    ));
  }

  void showErrorSnackBar({required String message}) {
    /// Get.closeAllSnackbars();
    Get.showSnackbar(GetSnackBar(
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: AppFontFamily().roboto.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Theme.of(Get.context!).scaffoldBackgroundColor),
      ),
      backgroundColor: Theme.of(Get.context!).errorColor,
      duration: const Duration(seconds: 2),
      isDismissible: true,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      snackPosition: SnackPosition.TOP,
      borderRadius: AppDimensions().h30,
      maxWidth: Get.width / 1.3,
    ));
  }

  void hideKeyBoard() =>
      SystemChannels.textInput.invokeMethod('TextInput.hide');

  // Future<File?> pickImage({
  //   required ImageSource img,
  // }) async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.pickImage(source: img, imageQuality: 50);
  //   if (pickedFile != null) {
  //     return File(pickedFile.path);
  //   } else {
  //     ScaffoldMessenger.of(Get.context!)
  //         .showSnackBar(const SnackBar(content: Text('Nothing is selected')));
  //   }
  //   return null;
  // }

  List<BoxShadow> boxShadow(
          {Color? color,
          double spreadRadius = 5,
          double blurRadius = 30,
          Offset offset = const Offset(0, 3)}) =>
      [
        BoxShadow(
          color: const Color(0xff0000001A).withOpacity(0.05),
          spreadRadius: spreadRadius,
          blurRadius: blurRadius,
          offset: offset,
        )
      ];
}
