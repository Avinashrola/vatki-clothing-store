import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';
import '../../utils/constant/app_icon.dart';
import '../textWidget/text_widget.dart';

class AppButton {
  static ElevatedButton primaryButton(
      {required void Function()? onButtonPressed, required String title}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: AppColors.primaryColor),
        onPressed: onButtonPressed,
        child: Text(title));
  }

  static GestureDetector signInButton(
      {required VoidCallback onTap, required String title}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(
                3.0,
                3.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextWidget(
                align: TextAlign.center,
                text: title,
                maxLine: 1,
                color: AppColors.white,
                fontWeight: FontWeight.w400,
                textSize: 14,
              ),
              const SizedBox(
                width: 10,
              ),
              AppIcons.rightArrow
            ],
          ),
        ),
      ),
    );
  }

  static GestureDetector nButton(
      {required VoidCallback onTap, required String title}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        width: 150,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(
                3.0,
                3.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Center(
          child: TextWidget(
            align: TextAlign.center,
            text: title,
            maxLine: 1,
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            textSize: 14,
          ),
        ),
      ),
    );
  }

  static GestureDetector logoutButton(
      {required VoidCallback onTap, required String title}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        width: 150,
        decoration: BoxDecoration(
          color: AppColors.redColors,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(
                3.0,
                3.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextWidget(
              align: TextAlign.center,
              text: title,
              maxLine: 1,
              color: AppColors.white,
              fontWeight: FontWeight.w400,
              textSize: 16,
            ),
            const SizedBox(
              width: 10,
            ),
            AppIcons.logoutIcon
          ],
        )),
      ),
    );
  }
}
