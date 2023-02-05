



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/app_color.dart';
import '../textWidget/text_widget.dart';

class Shorting{
 static Future short(){
   return Get.bottomSheet(
        backgroundColor: AppColors.white,
        barrierColor: AppColors.black65,
        isDismissible: true,
        SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidget(
                    text: "SORT BY",
                    textSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.center),
              ),
              const Divider(),
              Row(
                children: [
                  Radio(
                    value: 'popularity',
                    groupValue: '',
                    onChanged: (value) {
                      Get.back();
                    },
                    activeColor: AppColors.primaryColor,
                    fillColor: MaterialStateProperty.all(
                        AppColors.primaryColor),
                  ),
                const  TextWidget(
                      text: "Popularity",
                      textSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.center),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 'lowtohigh',
                    groupValue: '',
                    onChanged: (value) {
                      Get.back();
                    },
                    activeColor: AppColors.primaryColor,
                    fillColor: MaterialStateProperty.all(
                        AppColors.primaryColor),
                  ),
                  const  TextWidget(
                      text: "Price: Low to High",
                      textSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.center),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 'hightolow',
                    groupValue: '',
                    onChanged: (value) {
                      Get.back();
                    },
                    activeColor: AppColors.primaryColor,
                    fillColor: MaterialStateProperty.all(
                        AppColors.primaryColor),
                  ),
                  const  TextWidget(
                      text: "Price: High to Low",
                      textSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.center),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 'new',
                    groupValue: '',
                    onChanged: (value) {
                      Get.back();
                    },
                    activeColor: AppColors.primaryColor,
                    fillColor: MaterialStateProperty.all(
                        AppColors.primaryColor),
                  ),
                  const  TextWidget(
                      text: "Newest First",
                      textSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.center),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 'discount',
                    groupValue: '',
                    onChanged: (value) {
                      Get.back();
                    },
                    activeColor: AppColors.primaryColor,
                    fillColor: MaterialStateProperty.all(
                        AppColors.primaryColor),
                  ),
                  const  TextWidget(
                      text: "Discount",
                      textSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.center),
                ],
              ),
            ],
          ),
        ),);
  }
}