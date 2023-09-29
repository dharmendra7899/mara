import 'package:get/get.dart';

import '../../modules/bottomNavigation/bottomNavigationController.dart';
import '../../modules/splash/splashController.dart';
import '../themeController/themeController.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController());
    Get.lazyPut(() => SplashController());
    Get.put(BottomNavigationController(), permanent: true);
  }
}
