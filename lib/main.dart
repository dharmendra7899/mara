import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mara/bindings/themeController/themeController.dart';
import 'package:mara/utils/routes/appRoutesNavigation.dart';
import 'package:mara/utils/theme/darkTheme.dart';
import 'package:mara/utils/theme/lightTheme.dart';

import 'bindings/initialBindings/initialBindings.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      title: 'Mara',
      debugShowCheckedModeBanner: false,
      //theme: Get.find<ThemeController>().isDarkMode ? dark() : light(),
      theme: Get.put(
        ThemeController().isDarkMode ? dark() : light(),
      ),
      initialBinding: InitialBinding(),
      initialRoute: AppPage.initial,
      getPages: AppPage.routes,
    );
  }
}
