import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {
  String? clockInTime;

  Timer? timer;
  int start = 30;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (Timer timer) {
      if (start == 0) {
        timer.cancel();
        update();
      } else {
        start--;
        update();
      }
    });
  }
}
