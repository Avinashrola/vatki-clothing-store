import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/helper/helper_sncksbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../widgets/appBar/appbar.dart';
import '../../widgets/textWidget/text_widget.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  var enteredOtp = "";
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: AppColors.primaryColor),
    borderRadius: BorderRadius.circular(8),
  );

  static final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: AppColors.primaryColor.withOpacity(0.1),
    ),
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'OTP', isCenter: true, isBackHelper: true),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 60, left: 36, right: 36, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextWidget(
              text: "Enter the OTP sent to  9876543210",
              textSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              maxLine: 1,
              align: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Pinput(
              length: 4,
              autofocus: true,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              validator: (s) {
                enteredOtp = s!;
                return s == "0000" ? null : 'Pin is incorrect';
              },
              showCursor: true,
              onCompleted: (pin) {},
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (_pinPutController.text.isNotEmpty) {
                  if (_pinPutController.text.length > 3) {
                    Get.toNamed('/setPassword');
                  } else {
                    HelperSnackBar.snackBar('Error', 'Please fill Proper OTP');
                  }
                } else {
                  HelperSnackBar.snackBar('Error', 'Please Put Proper OTP');
                }
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.primaryColor),
                child: const TextWidget(
                    text: 'Verify',
                    textSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                    maxLine: 1,
                    align: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
