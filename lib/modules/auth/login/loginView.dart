import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/appHelper/appDimensions.dart';
import '../../../utils/appHelper/appFontFamily.dart';
import '../../../utils/appHelper/appHelperFunction.dart';
import '../../../utils/appScaffold.dart';
import '../../../utils/appTextFiled.dart';
import '../../../utils/button.dart';
import '../../../utils/images.dart';
import '../../../utils/routes/appRoutesNavigation.dart';
import 'loginController.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  static final _formKeyLogin = GlobalKey<FormState>();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (loginController) {
          return AppScaffold(
              isLoading: loginController.isLoading,
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppDimensions().vSpace30(),
                        Center(
                          child: Image.asset(
                            ConstantImage.logo,
                            scale: 1,
                          ),
                        ),
                        AppDimensions().vSpace30(),
                        Text(
                          "Your email address",
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 26,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "We’ll send an OTP for verification",
                          style: AppFontFamily().roboto.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).disabledColor,
                              fontWeight: FontWeight.w400),
                        ),
                        AppDimensions().vSpace30(),
                        loginView(),
                        AppDimensions().vSpace30(),
                        AppDimensions().vSpace30(),
                        CustomButton(
                            onStartNowClick: () {
                              if (_formKeyLogin.currentState!.validate()) {
                                loginController.login(
                                    email: email.text, password: password.text);
                                AppHelperFunction().hideKeyBoard();
                              }
                            },
                            buttonText: "Login",
                            textColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            startColor: Color(0xffA415A6),
                            endColor: Color(0xff1C62C0)),
                        AppDimensions().vSpace30(),
                        AppDimensions().vSpace10(),
                        Center(
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Don't have account? ",
                                style: AppFontFamily().roboto.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Theme.of(context).highlightColor),
                              ),
                              TextSpan(
                                text: "Sign un",
                                style: AppFontFamily().roboto.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Theme.of(context).primaryColorDark),
                                recognizer: TapGestureRecognizer()
                                  ..onTap =
                                      () => Get.toNamed(AppRoutes.register),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  Widget loginView() {
    return Form(
      key: _formKeyLogin,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            validator: (input) =>
                input!.isValidEmail() ? null : "Invalid email",
            controller: email,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Theme.of(Get.context!).highlightColor,
            style: AppFontFamily().roboto.copyWith(
                fontSize: 16,
                color: Theme.of(Get.context!).highlightColor,
                fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              fillColor: Theme.of(Get.context!).scaffoldBackgroundColor,
              filled: false,
              errorStyle: AppFontFamily().roboto.copyWith(
                  fontSize: 12,
                  color: Theme.of(Get.context!).errorColor,
                  fontWeight: FontWeight.w400),
              hintText: "Email",
              hintStyle: AppFontFamily().roboto.copyWith(
                  fontSize: 16,
                  color: Theme.of(Get.context!).disabledColor,
                  fontWeight: FontWeight.w500),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Theme.of(Get.context!).highlightColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Theme.of(Get.context!).highlightColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Theme.of(Get.context!).highlightColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Theme.of(Get.context!).highlightColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Theme.of(Get.context!).highlightColor),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Theme.of(Get.context!).highlightColor),
              ),
              suffixIcon: Image.asset(
                ConstantImage.mail,
              ),
            ),
          ),
          AppDimensions().vSpace25(),
          CustomTextFiled(
            keyboardType: TextInputType.text,
            controller: password,
            isValid: (val) => val.isNotEmpty,
            hintText: "Password",
            errorMessage: "Enter password",
            suffix: Image.asset(
              ConstantImage.eye,
            ),
          ),
        ],
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}'
            r'\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
