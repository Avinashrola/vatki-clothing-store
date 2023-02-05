import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/buttons/button.dart';
import 'package:Vatki_Clothing_Store/widgets/textField/text_edit_field.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

TextEditingController mobileController = TextEditingController();
TextEditingController passController = TextEditingController();

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          physics: ScrollPhysics(),
          child: Container(
            height: Get.height,
            padding: const EdgeInsets.all(15.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/png/authbg.png",
                    ),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.45,
                    child: Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.25),
                      child: Center(
                        child: Container(
                          child: Image.asset('assets/png/logoWithoutBg.png',
                              // height: Get.height * 0.2,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextWidget(
                      text: "Welcome",
                      textSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.start),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: TextWidget(
                        text: "Sign in to continue !",
                        textSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start),
                  ),
                  TextEditField.textFieldWithPreffixicon(
                      picon: Icons.call,
                      hintText: "Enter Mobile Number",
                      valText: "Please Enter Mobile Number",
                      controller: mobileController,
                      isOnlyMobileKeyboard: false),
                  const SizedBox(
                    height: 15,
                  ),
                  TextEditField.textFieldWithPreffixicon(
                      picon: Icons.lock,
                      hintText: "Enter Password",
                      valText: "Please Enter Password",
                      controller: passController,
                      maxLine: 1,
                      isOnlyMobileKeyboard: false),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextWidget(
                          text: "Forgot Password ?",
                          textSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                          maxLine: 1,
                          align: TextAlign.center),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: SizedBox(
                      height: 45,
                      width: Get.width,
                      child: AppButton.primaryButton(
                          onButtonPressed: () {}, title: "Login"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                          text: "Don’t have an account? ",
                          textSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.center),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signupScreen);
                        },
                        child: const TextWidget(
                            text: "Sign Up",
                            textSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                            maxLine: 1,
                            align: TextAlign.center),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                          text: "By continuing, I agree to  & ",
                          textSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.center),
                      InkWell(
                        onTap: () {},
                        child: const TextWidget(
                            text: "terms of us",
                            textSize: 12,
                            fontWeight: FontWeight.normal,
                            color: AppColors.primaryColor,
                            maxLine: 1,
                            align: TextAlign.center),
                      ),
                      const TextWidget(
                          text: " & ",
                          textSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.center),
                      InkWell(
                        onTap: () {},
                        child: const TextWidget(
                            text: "Privacy policy",
                            textSize: 12,
                            fontWeight: FontWeight.normal,
                            color: AppColors.primaryColor,
                            maxLine: 1,
                            align: TextAlign.center),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
