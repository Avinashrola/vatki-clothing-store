// ignore_for_file: deprecated_member_use
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controllers/@customerControllers/landingController/landing_controller.dart';
import '../../../utils/constant/app_color.dart';
import '../../../utils/helper/helper_sncksbar.dart';
import '../../../widgets/dailog/language_dialog.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> socialLogo = [
      "assets/png/facebook.png",
      "assets/png/instagram.png",
      "assets/png/twitter.png",
    ];
    List<String> socialUrl = [
      "https://www.facebook.com/vatki.store",
      "https://www.instagram.com/vatki.store/",
      "https://www.instagram.com/vatki.store/",
    ];
    List<String> title = [
      "My Orders",
      "My Wallet",
      "My Address",
      "My Notification",
      "Refer And Earn",
      "Return And Refunds",
      "FAQ",
      "About Us",
      "Rate This App",
      "Contact Us",
      "Language",
    ];
    return Drawer(
      width: 300,
      child: Column(
        children: [
          SizedBox(
            height: 160,
            width: double.infinity,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.only(top: 8,left: 8),
              child: InkWell(
                onTap: _onTapUser,
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.account_circle,
                        size: 90, color: AppColors.white),
                     SizedBox(width: 12,),
                    TextWidget(
                        text: 'User Name',
                        textSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        maxLine: 1,
                        align: TextAlign.center)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: List.generate(
                  title.length,
                  (index) => Column(
                    children: [
                      InkWell(
                        onTap: () => _onTapItem(index, context),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 16, bottom: 8),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.outbox_rounded,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextWidget(
                                  text: title[index],
                                  textSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.center),
                              const Spacer(),
                              if (index == 1)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 3),
                                  margin: const EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(2),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: AppColors.grey,
                                          blurRadius: 5.0,
                                        ),
                                      ]),
                                  child: const TextWidget(
                                      text: "0.0",
                                      textSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.white,
                                      maxLine: 1,
                                      align: TextAlign.center),
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (index == 3 || index == 6)
                        const Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            color: Colors.grey.withOpacity(0.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                socialLogo.length,
                (index) => InkWell(
                  onTap: () => _launchInBrowser(socialUrl[index]),
                  child: Image.asset(
                    socialLogo[index],
                    height: 37,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    launch(url);
  }

  void _onTapItem(int index, BuildContext context) {
    LandingController c = Get.find();
    if (index == 0) {
      Get.back();
      c.selectIndex.value = 3;
      //Get.toNamed(AppRoutes.orderHistory);
    } else if (index == 1) {
      Get.toNamed(AppRoutes.walletScreen);
    } else if (index == 2) {
      Get.toNamed(AppRoutes.myAddress);
    } else if (index == 3) {
      Get.toNamed(AppRoutes.notificationScreen);
    } else if (index == 4) {
      Get.toNamed(AppRoutes.referEarn);
    } else if (index == 5) {
      Get.toNamed(AppRoutes.returnRefunds);
    } else if (index == 6) {
      Get.toNamed(AppRoutes.faq);
    } else if (index == 7) {
      Get.toNamed('/aboutUs');
    } else if (index == 8) {
      HelperSnackBar.snackBar('Error', "Sorry we are working here");
    } else if (index == 9) {
      Get.toNamed('/contactUs');
    } else if (index == 10) {
      LanguageDialog.languageDialog(context);
    }
  }

  void _onTapUser() {}
}
