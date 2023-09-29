import 'package:get/get.dart';
import 'package:mara/utils/routes/appRoutesNavigation.dart';

class LoginController extends GetxController {
  bool isLoading = false;
  bool isActive = false;
  bool isClickable = false;

  login({required String email, required String password}) {
    isLoading = true;
    update();
    Future.delayed(const Duration(seconds: 2), () {
      isLoading = false;
      Get.offNamed(AppRoutes.dashboard);
      update();
    });
  }
}
