import 'package:flutter/material.dart';

import '../../utils/appHelper/appDimensions.dart';
import '../../utils/appHelper/appFontFamily.dart';
import '../../utils/appHelper/appHelperFunction.dart';
import '../../utils/images.dart';

class ProfileDetailView extends StatelessWidget {
  ProfileDetailView({super.key});

  List dataList = [
    ["Start Now", "11:00 am"],
    ["Attendance", "100 People"],
    ["End Time", "08:00 pm"],
    ["Time off", "08:10 pm"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppDimensions().vSpace30(),
          AppDimensions().vSpace20(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppDimensions().vSpace15(),
                    Text(
                      "Dharmendra Kumar",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 18,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Attendance management",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 14,
                          color: Color(0xff5F5C5C),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "11 August 2023",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 15,
                          color: Theme.of(context).highlightColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                AppDimensions().hSpace10(),
                Container(
                  height: 60,
                  width: 60,
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
              ],
            ),
          ),
          recentActivity(context),
          AppDimensions().vSpace30(),
        ],
      ),
    );
  }

  Widget homeGirdView(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: GridView.builder(
        itemCount: dataList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.1),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: index == 0
                    ? Color.fromRGBO(249, 179, 53, 0.20)
                    : index == 1
                        ? Color.fromRGBO(255, 11, 231, 0.20)
                        : index == 2
                            ? Color.fromRGBO(0, 85, 211, 0.20)
                            : Color.fromRGBO(255, 166, 162, 0.20),
                boxShadow: AppHelperFunction().boxShadow(blurRadius: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${dataList[index][0]}",
                  textAlign: TextAlign.center,
                  style: AppFontFamily().roboto.copyWith(
                      fontSize: 18,
                      color: Theme.of(context).highlightColor,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 138,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: index == 0
                          ? Color.fromRGBO(15, 184, 62, 0.50)
                          : index == 1
                              ? Color.fromRGBO(249, 179, 53, 0.50)
                              : index == 2
                                  ? Color.fromRGBO(255, 0, 0, 0.50)
                                  : Color.fromRGBO(21, 38, 134, 0.7),
                      boxShadow: AppHelperFunction().boxShadow(blurRadius: 20)),
                  child: Text(
                    "${dataList[index][1]}",
                    textAlign: TextAlign.center,
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 20,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "On Time",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 15,
                          color: Color(0xff949494),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "+160pt",
                      textAlign: TextAlign.center,
                      style: AppFontFamily().roboto.copyWith(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ));
  }

  Widget recentActivity(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Activity",
                textAlign: TextAlign.center,
                style: AppFontFamily().roboto.copyWith(
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See more",
                textAlign: TextAlign.center,
                style: AppFontFamily().roboto.copyWith(
                    fontSize: 16,
                    color: Theme.of(context).cardColor,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
