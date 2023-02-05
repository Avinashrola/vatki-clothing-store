import 'dart:math';

import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:flutter/material.dart';

class TextEditField {
  static TextFormField textField(
      {required String hintText,
      required String valText,
      int? maxLine,
      required TextEditingController controller,
      required bool isOnlyMobileKeyboard}) {
    return TextFormField(
      maxLines: maxLine ?? 1,
      controller: controller,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        filled: true,
        fillColor: AppColors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        border: const OutlineInputBorder(),
        labelText: hintText,
      ),
      keyboardType:
          isOnlyMobileKeyboard ? TextInputType.phone : TextInputType.text,
      validator: (value) {
        if (value == '') {
          return valText;
        }
        return null;
      },
    );
  }

  static TextFormField textFieldWithPreffixicon(
      {required String hintText,
      required String valText,
      required IconData picon,
      int? maxLine,
      required TextEditingController controller,
      required bool isOnlyMobileKeyboard}) {
    return TextFormField(
      maxLines: maxLine ?? 1,
      controller: controller,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          filled: true,
          fillColor: AppColors.buttonlightGreen.withOpacity(0.6),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: hintText,
          prefixIcon: Icon(
            picon,
            color: AppColors.primaryColor,
          )),
      keyboardType:
          isOnlyMobileKeyboard ? TextInputType.phone : TextInputType.text,
      validator: (value) {
        if (value == '') {
          return valText;
        }
        return null;
      },
    );
  }
}
