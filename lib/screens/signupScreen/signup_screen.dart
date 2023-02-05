import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/buttons/button.dart';
import 'package:Vatki_Clothing_Store/widgets/textField/text_edit_field.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

TextEditingController mobileController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();

class _SignupScreenState extends State<SignupScreen> {
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
                        text: "Sign Up !",
                        textSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start),
                  ),
                  TextEditField.textFieldWithPreffixicon(
                      picon: Icons.person,
                      hintText: "Name",
                      valText: "Please Enter Name",
                      controller: nameController,
                      isOnlyMobileKeyboard: false),
                  const SizedBox(
                    height: 15,
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
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: Get.width,
                    child: AppButton.primaryButton(
                        onButtonPressed: () {}, title: "Signup"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(
                          text: "Already have an account?",
                          textSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.center),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signinScreen);
                        },
                        child: const TextWidget(
                            text: "  Sign In",
                            textSize: 12,
                            fontWeight: FontWeight.bold,
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
