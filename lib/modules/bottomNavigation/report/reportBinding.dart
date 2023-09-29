import 'package:get/get.dart';
import 'package:mara/modules/bottomNavigation/report/reportController.dart';

class ReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportController());
  }
}
