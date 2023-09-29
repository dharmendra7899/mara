import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/utils/appHelper/appDimensions.dart';
import 'package:mara/utils/images.dart';
import 'package:mara/utils/routes/appRoutesNavigation.dart';

import '../../utils/appHelper/appFontFamily.dart';
import '../../utils/appHelper/appHelperFunction.dart';

class LeftDrawer extends StatelessWidget {
  LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width / 1.3,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(14),
              alignment: Alignment.centerLeft,
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColorDark.withOpacity(0.90),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: InkWell(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        boxShadow: AppHelperFunction().boxShadow(),
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            ConstantImage.dummy,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  AppDimensions().hSpace10(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dharmendra Kumar",
                        textAlign: TextAlign.center,
                        style: AppFontFamily().roboto.copyWith(
                            fontSize: 18,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                          Get.toNamed(AppRoutes.profileDetail);
                        },
                        child: Text(
                          "See Your Profile",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 16,
                              color: Theme.of(context).disabledColor,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: 1.5,
              color: Theme.of(context).dividerColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "My account",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  AppDimensions().vSpace10(),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.profile),
                    child: Container(
                      height: 60,
                      width: Get.width,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      decoration: BoxDecoration(
                          boxShadow:
                              AppHelperFunction().boxShadow(blurRadius: 30),
                          color: Theme.of(context).scaffoldBackgroundColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).primaryColor,
                                  Theme.of(context)
                                      .primaryColorDark
                                      .withOpacity(0.90),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Image.asset(ConstantImage.user),
                          ),
                          AppDimensions().hSpace15(),
                          Text(
                            "Profile",
                            textAlign: TextAlign.center,
                            style: AppFontFamily().roboto.copyWith(
                                fontSize: 18,
                                color: Theme.of(context).highlightColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppDimensions().vSpace20(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "System",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  AppDimensions().vSpace10(),
                  Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        boxShadow:
                            AppHelperFunction().boxShadow(blurRadius: 30),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          ConstantImage.dark,
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        AppDimensions().hSpace15(),
                        Text(
                          "Dark Mode",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  AppDimensions().vSpace20(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Feedback",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  AppDimensions().vSpace10(),
                  Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        boxShadow:
                            AppHelperFunction().boxShadow(blurRadius: 30),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                Theme.of(context)
                                    .primaryColorDark
                                    .withOpacity(0.90),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Image.asset(ConstantImage.rate),
                        ),
                        AppDimensions().hSpace15(),
                        Text(
                          "Rate The App",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        boxShadow:
                            AppHelperFunction().boxShadow(blurRadius: 30),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                Theme.of(context)
                                    .primaryColorDark
                                    .withOpacity(0.90),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Image.asset(ConstantImage.update),
                        ),
                        AppDimensions().hSpace15(),
                        Text(
                          "Updates",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  AppDimensions().vSpace20(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Mara Attendance",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  AppDimensions().vSpace10(),
                  Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        boxShadow:
                            AppHelperFunction().boxShadow(blurRadius: 30),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                Theme.of(context)
                                    .primaryColorDark
                                    .withOpacity(0.90),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Image.asset(ConstantImage.terms),
                        ),
                        AppDimensions().hSpace15(),
                        Text(
                          "Terms and conditions",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        boxShadow:
                            AppHelperFunction().boxShadow(blurRadius: 30),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                Theme.of(context)
                                    .primaryColorDark
                                    .withOpacity(0.90),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Image.asset(ConstantImage.privacy),
                        ),
                        AppDimensions().hSpace15(),
                        Text(
                          "Privacy policy",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        boxShadow:
                            AppHelperFunction().boxShadow(blurRadius: 30),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          ConstantImage.logout,
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        AppDimensions().hSpace15(),
                        Text(
                          "Log out",
                          textAlign: TextAlign.center,
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 18,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
