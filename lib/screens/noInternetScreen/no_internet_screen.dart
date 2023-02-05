import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/nointernet.json',
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextWidget(
                  text: "Make sure you are connected to the internet !",
                  textSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                  maxLine: 3,
                  align: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
