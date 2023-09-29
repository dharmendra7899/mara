import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/modules/introScreen/introScreenController.dart';
import 'package:mara/utils/routes/appRoutesNavigation.dart';

import '../../utils/appHelper/appDimensions.dart';
import '../../utils/appHelper/appFontFamily.dart';
import '../../utils/button.dart';
import '../../utils/images.dart';

class IntroScreenView extends StatelessWidget {
  IntroScreenView({Key? key}) : super(key: key);

  List introList = [
    ConstantImage.intro,
    ConstantImage.intro,
    ConstantImage.intro,
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroScreenController>(
        init: IntroScreenController(),
        builder: (introController) {
          return Scaffold(
            body: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Theme.of(context).primaryColor,
                  width: Get.width,
                  height: Get.height,
                  child: PageView.builder(
                      controller: introController.controller,
                      onPageChanged: (value) =>
                          introController.changePageIndex(index: value),
                      scrollDirection: Axis.horizontal,
                      itemCount: introList.length,
                      physics:
                          const ScrollPhysics(parent: BouncingScrollPhysics()),
                      itemBuilder: (context, index) => Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top: 230,
                                child: SizedBox(
                                  height: 450,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        introList[index],
                                        width: 350,
                                        height: 430,
                                        fit: BoxFit.contain,
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: CustomButton(
                                          width: 300,
                                          onStartNowClick: () {
                                            Get.offNamed(AppRoutes.register);
                                          },
                                          textColor: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          buttonText: "Register",
                                          startColor: const Color(0xff581159),
                                          endColor: const Color(0xffA415A6),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 85,
                                  child: Text(
                                      "Finding the Perfect \nAttendance for Your Days",
                                      textAlign: TextAlign.center,
                                      style: AppFontFamily().roboto.copyWith(
                                          height: 1.1,
                                          fontSize: AppDimensions().h25,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          fontWeight: FontWeight.w600))),
                              Positioned(
                                top: 166,
                                child: SizedBox(
                                  width: Get.width - 50,
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur sed do eiusmod tempor incididunt",
                                      textAlign: TextAlign.center,
                                      style: AppFontFamily().roboto.copyWith(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ],
                          )),
                ),
                Positioned(
                  bottom: 100,
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Already have account? ",
                        style: AppFontFamily().roboto.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                      TextSpan(
                        text: "Log in",
                        style: AppFontFamily().roboto.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Theme.of(context).primaryColorDark),
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  child: SizedBox(
                      height: AppDimensions().h10,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(
                            parent: NeverScrollableScrollPhysics()),
                        itemCount: introList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          height: 5,
                          width: introController.currentIndexOfPage == index
                              ? AppDimensions().h10
                              : AppDimensions().h10,
                          margin: EdgeInsets.symmetric(
                              horizontal: AppDimensions().h05),
                          decoration: BoxDecoration(
                            color: introController.currentIndexOfPage == index
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(
                                introController.currentIndexOfPage == index
                                    ? AppDimensions().h30
                                    : AppDimensions().h05),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          );
        });
  }
}
