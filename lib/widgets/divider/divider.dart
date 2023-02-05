import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:flutter/material.dart';

class GreyDivider {
  static Widget Divider( ) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 5,
        color: AppColors.dividercolor,
      ),
    );
  }
}
