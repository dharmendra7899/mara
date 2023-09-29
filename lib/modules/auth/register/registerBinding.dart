import 'package:get/get.dart';
import 'package:mara/modules/auth/register/registerController.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
