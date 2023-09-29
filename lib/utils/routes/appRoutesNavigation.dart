import 'package:get/get.dart';
import 'package:mara/modules/auth/login/loginBinding.dart';
import 'package:mara/modules/auth/login/loginView.dart';
import 'package:mara/modules/auth/register/registerBinding.dart';
import 'package:mara/modules/auth/register/registerView.dart';
import 'package:mara/modules/bottomNavigation/BottomNavigationView.dart';
import 'package:mara/modules/bottomNavigation/bottomNavigationBinding.dart';
import 'package:mara/modules/introScreen/introScreenBinding.dart';
import 'package:mara/modules/introScreen/introView.dart';
import 'package:mara/modules/profile/profileBinding.dart';
import 'package:mara/modules/profile/profileView.dart';
import 'package:mara/modules/profileDetail/profileDetailBinding.dart';
import 'package:mara/modules/profileDetail/profileDetailView.dart';

import '../../modules/splash/splashBinding.dart';
import '../../modules/splash/splashScreen.dart';

part 'appRoutesStrings.dart';

class AppPage {
  static String initial = AppRoutes.splash;

  static final routes = [
    GetPage(
        preventDuplicates: true,
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.introScreen,
        page: () => IntroScreenView(),
        binding: IntroScreenBinding()),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.register,
        page: () => RegisterView(),
        binding: RegisterBinding()),
    GetPage(
        name: AppRoutes.dashboard,
        page: () => BottomNavigationView(),
        binding: BottomNavigationBinding()),
    GetPage(
        name: AppRoutes.profile,
        page: () => ProfileView(),
        binding: ProfileBinding()),
    GetPage(
        name: AppRoutes.profileDetail,
        page: () => ProfileDetailView(),
        binding: ProfileDetailBinding()),
  ];
}
