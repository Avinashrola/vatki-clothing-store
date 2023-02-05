import 'package:Vatki_Clothing_Store/utils/helper/helper_sncksbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/appBar/appbar.dart';
import '../../widgets/textField/text_edit_field.dart';
import '../../widgets/textWidget/text_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _mobileController = TextEditingController();
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'Forget Password', isCenter: true, isBackHelper: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const SizedBox(height: 100),
              TextEditField.textField(
                  hintText: 'Mobile Number',
                  valText: 'Please Enter Mobile Number',
                  controller: _mobileController,
                  isOnlyMobileKeyboard: true),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (_key.currentState!.validate()) {
                    if (_mobileController.text.length > 9) {
                      Get.toNamed('/verifyOTPScreen');
                    } else {
                      HelperSnackBar.snackBar(
                          'Error', 'Please fill a proper number');
                    }
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.primaryColor),
                  child: const TextWidget(
                      text: 'Send Otp',
                      textSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                      maxLine: 1,
                      align: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
