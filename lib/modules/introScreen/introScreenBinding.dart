import 'package:get/get.dart';
import 'package:mara/modules/introScreen/introScreenController.dart';

class IntroScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroScreenController());
  }
}
