import 'package:get/get.dart';
import 'package:mara/modules/profile/profileController.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
