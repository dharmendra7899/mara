import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mara/utils/appHelper/appDimensions.dart';

import 'appHelper/appFontFamily.dart';

class CustomTextFormFiled extends StatefulWidget {
  final String hintText;
  final String title;
  final TextEditingController? controller;
  final Function? onChanged;
  final String errorMessage;
  final bool isMobile;
  final Widget suffix;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormFiled({
    Key? key,
    this.inputFormatters,
    this.isMobile = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.errorMessage = "Invalid Value",
    this.onChanged(String val)?,
    this.controller,
    this.suffix = const SizedBox(),
    required this.hintText,
    required this.title,
  }) : super(key: key);

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  //bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: AppFontFamily().roboto.copyWith(
              fontSize: 20,
              color: Color(0xff000000),
              fontWeight: FontWeight.w500),
        ),
        AppDimensions().vSpace5(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 50,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(164, 21, 166, 0.20),
                  Color.fromRGBO(217, 217, 217, 0.00),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              border: Border(
                  bottom: BorderSide(
                      width: 1, color: Theme.of(context).highlightColor))),
          child: TextFormField(
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            textCapitalization: widget.textCapitalization,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) =>
                widget.onChanged != null ? widget.onChanged!(value) : {},
            controller: widget.controller,
            cursorColor: Theme.of(context).highlightColor,
            style: AppFontFamily().roboto.copyWith(
                fontSize: 18,
                color: Theme.of(context).highlightColor,
                fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: false,
              hintText: widget.hintText,
              hintStyle: AppFontFamily().roboto.copyWith(
                  fontSize: 18,
                  color: Theme.of(context).highlightColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
