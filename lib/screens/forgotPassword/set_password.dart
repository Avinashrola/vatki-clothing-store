import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';
import '../../utils/helper/helper_sncksbar.dart';
import '../../widgets/appBar/appbar.dart';
import '../../widgets/textField/text_edit_field.dart';
import '../../widgets/textWidget/text_widget.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({
    Key? key,
  }) : super(key: key);

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'Set New Password', isCenter: true, isBackHelper: true),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 20),
          children: [
            const SizedBox(
              height: 40,
            ),
            TextEditField.textField(
                hintText: 'New password',
                valText: 'Please Enter New Password',
                controller: _newPassController,
                isOnlyMobileKeyboard: false),
            const SizedBox(
              height: 30,
            ),
            TextEditField.textField(
                hintText: 'Confirm password',
                valText: 'Please Enter Confirm Password',
                controller: _confirmPassController,
                isOnlyMobileKeyboard: false),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  if (_newPassController.text == _confirmPassController.text) {
                  } else {
                    HelperSnackBar.snackBar('Error', 'Password did not match');
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
                    text: 'SUBMIT',
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
    );
  }
}
