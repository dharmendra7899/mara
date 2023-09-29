import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'appHelper/appFontFamily.dart';

class CustomTextFiled extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function isValid;
  final Function? onChanged;
  final String errorMessage;
  final bool isMobile;
  final Widget suffix;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFiled(
      {Key? key,
      this.inputFormatters,
      this.isMobile = false,
      this.keyboardType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none,
      this.errorMessage = "Invalid Value",
      required this.isValid(String val),
      this.onChanged(String val)?,
      this.controller,
      this.suffix = const SizedBox(),
      required this.hintText})
      : super(key: key);

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  //bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        //obscureText: isVisible && widget.is,
        inputFormatters: widget.inputFormatters,
        textCapitalization: widget.textCapitalization,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) =>
            widget.isValid(value) ? null : widget.errorMessage,
        onChanged: (value) =>
            widget.onChanged != null ? widget.onChanged!(value) : {},
        controller: widget.controller,
        cursorColor: Theme.of(context).highlightColor,
        style: AppFontFamily().roboto.copyWith(
            fontSize: 16,
            color: Theme.of(context).highlightColor,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          fillColor: Theme.of(context).scaffoldBackgroundColor,
          filled: false,
          errorStyle: AppFontFamily().roboto.copyWith(
              fontSize: 12,
              color: Theme.of(context).errorColor,
              fontWeight: FontWeight.w400),
          hintText: widget.hintText,
          hintStyle: AppFontFamily().roboto.copyWith(
              fontSize: 16,
              color: Theme.of(context).disabledColor,
              fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).highlightColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).highlightColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).highlightColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).highlightColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).highlightColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 1, color: Theme.of(context).highlightColor),
          ),
          suffixIcon: widget.suffix,
        ),
      ),
    );
  }
}
