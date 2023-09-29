import 'package:get/get.dart';

import '../../../utils/routes/appRoutesNavigation.dart';

class RegisterController extends GetxController {
  bool isLoading = false;
  bool isActive = false;
  bool isClickable = false;
  bool agreedCheck = false;
  bool companyCheck = false;
  bool termsCheck = false;

  register({
    required String name,
    required String password,
  }) {
    isLoading = true;
    update();

    Future.delayed(const Duration(seconds: 2), () {
      isLoading = false;
      Get.offNamed(AppRoutes.dashboard);
      update();
    });
  }
}
