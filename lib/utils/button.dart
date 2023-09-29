import 'package:flutter/material.dart';

import 'appHelper/appDimensions.dart';
import 'appHelper/appFontFamily.dart';
import 'appHelper/appHelperFunction.dart';

class CustomButton extends StatelessWidget {
  final Function onStartNowClick;
  final String buttonText;
  Color textColor;
  Color startColor;
  Color endColor;
  final double height;
  final double width;

  CustomButton({
    Key? key,
    required this.onStartNowClick(),
    this.buttonText = "Continue",
    this.height = 50,
    this.width = double.infinity,
    required this.textColor,
    required this.startColor,
    required this.endColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppHelperFunction().hideKeyBoard();
        onStartNowClick();
      },
      child: Container(
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppHelperFunction().boxShadow(),
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Text(
          buttonText,
          style: AppFontFamily().roboto.copyWith(
              fontWeight: FontWeight.w500,
              color: textColor,
              fontSize: AppDimensions().h20),
        ),
      ),
    );
  }
}
