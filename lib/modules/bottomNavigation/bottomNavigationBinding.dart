import 'package:get/get.dart';

import 'bottomNavigationController.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
  }
}
