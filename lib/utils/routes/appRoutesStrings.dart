part of "appRoutesNavigation.dart";

abstract class AppRoutes {
  AppRoutes._();
  static const splash = RoutesPath.splash;
  static const introScreen = RoutesPath.introScreen;
  static const dashboard = RoutesPath.dashboard;
  static const register = RoutesPath.register;
  static const login = RoutesPath.login;
  static const profile = RoutesPath.profile;
  static const profileDetail = RoutesPath.profileDetail;
}

abstract class RoutesPath {
  static const splash = "/splash";
  static const introScreen = "/introScreen";
  static const login = "/login";
  static const register = "/register";
  static const dashboard = "/dashboard";
  static const profile = "/profile";
  static const profileDetail = "/profileDetail";
}
