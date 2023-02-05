import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';

class BorderField {
  static Widget textField(
      {required TextEditingController ctrl,
      required Function(String) onChanged,
      required String hintText,
      required bool type,
      required double height}) {
    return Container(
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.black),
        ),
        height: height,
        child: TextField(
          keyboardType: type ? TextInputType.phone : TextInputType.text,
          controller: ctrl,
          maxLength:  type ? 10 : 100,
          decoration: InputDecoration(
            counterText: "",
            border: InputBorder.none,
            hintText: hintText,
          ),
          onChanged: onChanged,
        ));
  }
}
