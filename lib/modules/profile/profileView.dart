import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/utils/appHelper/appDimensions.dart';

import '../../utils/appHelper/appFontFamily.dart';
import '../../utils/appHelper/appHelperFunction.dart';
import '../../utils/customTextForm.dart';
import '../../utils/images.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 235,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  alignment: Alignment.centerLeft,
                  height: 170,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      InkWell(
                        onTap: () => null,
                        child: Icon(
                          Icons.settings,
                          size: 25,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 110,
                  child: Container(
                    height: 110,
                    width: 110,
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
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextFormFiled(
                    hintText: "Dharmendra Kumar",
                    title: "Name",
                  ),
                  AppDimensions().vSpace20(),
                  const CustomTextFormFiled(
                    hintText: "dk@gmail.com",
                    title: "Email",
                  ),
                  AppDimensions().vSpace20(),
                  const CustomTextFormFiled(
                    hintText: "+91-9795541088",
                    title: "Mobile No",
                  ),
                  AppDimensions().vSpace20(),
                  const CustomTextFormFiled(
                    hintText: "Gomti Nagar, Lucknow",
                    title: "Location",
                  ),
                  AppDimensions().vSpace30(),
                  AppDimensions().vSpace30(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 1,
                              color: Theme.of(context).highlightColor),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(164, 21, 166, 0.20),
                              Color.fromRGBO(217, 217, 217, 0.00),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Save & Update",
                            style: AppFontFamily().roboto.copyWith(
                                fontSize: 17,
                                color: Theme.of(context).highlightColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 1,
                              color: Theme.of(context).highlightColor),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffA415A6),
                              Color(0xff1C62C0),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Change Password",
                            style: AppFontFamily().roboto.copyWith(
                                fontSize: 17,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
