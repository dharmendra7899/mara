import 'package:get/get.dart';
import 'package:mara/modules/profileDetail/profileDetailController.dart';

class ProfileDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileDetailController());
  }
}
