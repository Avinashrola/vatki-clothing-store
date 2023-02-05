import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonHeader extends StatelessWidget {
  final String title;
  final bool center;

  const CommonHeader({Key? key, required this.title, required this.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/png/Rectangle 2 2.png',
                height: 130,
                width: Get.width,
                fit: BoxFit.fill,
              ),
              Row(
                children: [
                  const BackButton(
                    color: AppColors.white,
                  ),
                  const SizedBox(width: 12,),
                  Expanded(
                    child: Align(
                      alignment: center ? Alignment.center: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(right: Get.width * 0.15),
                        child: TextWidget(
                            text: title,
                            textSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                            maxLine: 1,
                            align: TextAlign.center),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
