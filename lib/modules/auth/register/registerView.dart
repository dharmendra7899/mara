import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mara/modules/auth/register/registerController.dart';
import 'package:mara/utils/appHelper/appDimensions.dart';
import 'package:mara/utils/appTextFiled.dart';
import 'package:mara/utils/button.dart';
import 'package:mara/utils/images.dart';
import 'package:mara/utils/routes/appRoutesNavigation.dart';

import '../../../utils/appHelper/appFontFamily.dart';
import '../../../utils/appHelper/appHelperFunction.dart';
import '../../../utils/appScaffold.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final _formKeyLogin = GlobalKey<FormState>();
  static TextEditingController name = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (registerController) {
          return AppScaffold(
              isLoading: registerController.isLoading,
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Padding(
                  padding: const EdgeInsets.all(18.0),
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
                        "Sign up",
                        style: AppFontFamily().roboto.copyWith(
                            fontSize: 26,
                            color: Theme.of(context).highlightColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Sign Up to your account",
                        style: AppFontFamily().roboto.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor,
                            fontWeight: FontWeight.w400),
                      ),
                      AppDimensions().vSpace30(),
                      registerView(),
                      AppDimensions().vSpace30(),
                      AppDimensions().vSpace30(),
                      CustomButton(
                          onStartNowClick: () {
                            if (_formKeyLogin.currentState!.validate()) {
                              registerController.register(
                                  name: name.text, password: password.text);
                              AppHelperFunction().hideKeyBoard();
                            }
                          },
                          buttonText: "Sign up now",
                          textColor: Theme.of(context).scaffoldBackgroundColor,
                          startColor: Color(0xffA415A6),
                          endColor: Color(0xff1C62C0)),
                      AppDimensions().vSpace15(),
                      Center(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Already have account? ",
                              style: AppFontFamily().roboto.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Theme.of(context).highlightColor),
                            ),
                            TextSpan(
                              text: "Log in",
                              style: AppFontFamily().roboto.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColorDark),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.toNamed(AppRoutes.login),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }

  Widget registerView() {
    return Form(
      key: _formKeyLogin,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFiled(
            keyboardType: TextInputType.text,
            controller: name,
            textCapitalization: TextCapitalization.words,
            isValid: (val) => val.isNotEmpty,
            hintText: "Name",
            errorMessage: "Enter Name",
            suffix: Image.asset(
              ConstantImage.person,
            ),
          ),
          AppDimensions().vSpace25(),
          CustomTextFiled(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            textCapitalization: TextCapitalization.none,
            isValid: (val) => val.isNotEmpty,
            hintText: "Email",
            errorMessage: "Enter Email",
            suffix: Image.asset(
              ConstantImage.mail,
            ),
          ),
          AppDimensions().vSpace25(),
          CustomTextFiled(
            keyboardType: TextInputType.text,
            controller: password,
            textCapitalization: TextCapitalization.words,
            isValid: (val) => val.isNotEmpty,
            hintText: "Password",
            errorMessage: "Enter password",
            suffix: Image.asset(
              ConstantImage.eye,
            ),
          ),
          AppDimensions().vSpace25(),
          CustomTextFiled(
            keyboardType: TextInputType.text,
            controller: confirmPassword,
            textCapitalization: TextCapitalization.words,
            isValid: (val) => val.isNotEmpty,
            hintText: "Confirm Password",
            errorMessage: "Enter Confirm-password",
            suffix: Image.asset(
              ConstantImage.eye,
            ),
          ),
        ],
      ),
    );
  }
}
