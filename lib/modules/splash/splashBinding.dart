import 'package:get/get.dart';
import 'package:mara/modules/splash/splashController.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
