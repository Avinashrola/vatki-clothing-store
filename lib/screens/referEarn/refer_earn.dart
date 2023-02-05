import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../../utils/constant/app_color.dart';
import '../../widgets/textWidget/text_widget.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'Refer & Earn', isCenter: false, isBackHelper: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: SizedBox(
              height: 255,
              width: context.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.share,
                        size: 50,
                        color: AppColors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextWidget(
                          text: "Your Referral Code",
                          textSize: 22,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.black,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: TextWidget(
                              text: "dummyReferralCode",
                              textSize: 22,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.center),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          // foreground
                          fixedSize: const Size(400, 40),
                        ),
                        onPressed: () {
                          Share.share(
                              'Join me on BKart, a secure online shopping platform. Enter my code to earn on your first purchase. dummyReferralCode');
                        },
                        child: const Text("Share Code"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
