import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/modules/splash/splashController.dart';

import '../../utils/images.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (splashController) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              height: Get.height,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColorDark
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Image.asset(
                  ConstantImage.logo,
                  height: 163,
                  width: 194,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          );
        });
  }
}
