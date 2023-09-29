import 'package:get/get.dart';
import 'package:mara/modules/bottomNavigation/attendance/attendanceController.dart';

class AttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceController());
  }
}
