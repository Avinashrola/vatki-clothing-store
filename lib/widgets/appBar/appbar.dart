import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';
import '../textWidget/text_widget.dart';

class HelperAppBar{
  static AppBar appbarHelper({required String title,required bool isCenter,bool? isBackHelper = false}){
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: isCenter,
      automaticallyImplyLeading: isBackHelper ?? false,
      leading: isBackHelper! ?const  BackButton(color: AppColors.primaryColor,) : null ,
      title: TextWidget(
          text: title,
          textSize: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
          maxLine: 1,
          align: TextAlign.left),
    );
  }
}