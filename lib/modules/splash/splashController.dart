import 'package:get/get.dart';

import '../../utils/routes/appRoutesNavigation.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4))
        .then((value) => Get.offAllNamed(AppRoutes.introScreen));
    super.onInit();
  }
}
