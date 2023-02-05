import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/buttons/button.dart';
import 'package:Vatki_Clothing_Store/widgets/dailog/exit_popup_dialog.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showExitPopup(context);
      },
      child: Scaffold(
        body: Container(
          color: AppColors.white,
          height: Get.height,
          width: Get.width,
          child: Center(
            child: Container(
              height: Get.height * 0.7,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              // decoration: BoxDecoration(
              // color: Colors.white,
              // borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey,
              //     blurRadius: 2,
              //   )
              // ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/png/success.png",
                    height: 130,
                    width: 130,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextWidget(
                      text: "Your order has been received",
                      textSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                      maxLine: 1,
                      align: TextAlign.start),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextWidget(
                      text: "Thank you for your purchase !",
                      textSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColors.grey,
                      maxLine: 1,
                      align: TextAlign.start),
                  const TextWidget(
                      text: "Your order number is : ABCD-1234",
                      textSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.grey,
                      maxLine: 1,
                      align: TextAlign.start),
                  const TextWidget(
                      text:
                          "You will receive an order confirmation SMS and/or Email.",
                      textSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.grey,
                      maxLine: 1,
                      align: TextAlign.center),
                  const SizedBox(
                    height: 20,
                  ),
                  AppButton.primaryButton(
                      onButtonPressed: () {
                        Get.offAllNamed(AppRoutes.landingPage);
                      },
                      title: "CONTINUE SHOPPING")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
