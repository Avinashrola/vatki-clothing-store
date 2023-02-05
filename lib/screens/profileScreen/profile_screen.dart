// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'dart:developer';

import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/dailog/logout.dart';
import 'package:Vatki_Clothing_Store/widgets/divider/divider.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../controllers/@customerControllers/landingController/landing_controller.dart';
import '../../utils/helper/helper_sncksbar.dart';
import '../../utils/routes/app_routes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final LandingController _landingController = Get.find();

  List<String> txtList = [
    "My Orders",
    "My Addresses",
    "My Wallet",
    "Edit Profile",
    "Share This App",
    "Rate This App",
    "About Us",
    "Contact Us",
    "FAQs",
    "Logout",
  ];
  List iconList = [
    Icons.note_alt_outlined,
    Icons.location_on_outlined,
    Icons.wallet,
    Icons.edit,
    Icons.share,
    Icons.rate_review_rounded,
    Icons.group,
    Icons.phone_in_talk,
    Icons.quiz_outlined,
    Icons.logout,
  ];
  List<String> txtList2 = [
    "About Us",
    "Contact Us",
    "FAQs",
  ];
  List<String> pageList = [
    "/OrdersHistory",
    "/MyAddress",
    "/Rewards",
    "/ForgotPass",
    "/Feedback",
    "/AboutUs",
    "/ContactUs",
    "/Faq",
  ];

  @override
  void initState() {
    checkVersion();

    // profileController.getProfile();

    super.initState();
  }

  String version = "", buildNumber = "";

  void checkVersion() async {
    try {
      PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
        log("$version+$buildNumber");
      });
    } catch (e) {
      log("$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: AppColors.primaryColor,
                    height: 135,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 6,
                            child: Container(
                              width: size.width,
                              color: AppColors.primaryColor,
                            )),
                        Expanded(
                            flex: 5,
                            child: Container(
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                    top: 17,
                    left: 10,
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: const Offset(0.7, 0.7))
                          ],
                          border: Border.all(color: Colors.white, width: 1.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6))),
                      height: 100,
                      width: 100,
                      child: Container(
                        color: Colors.grey.shade200,
                        child: CachedNetworkImage(
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssfUQ7qaOoKricefFxELQYJ0MEc9eKCRlRg&usqp=CAU",
                          errorWidget: (context, url, error) =>
                              Image.asset("assets/imgs/error.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 125,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(
                                  top: 5.0, right: 5, bottom: 2),
                              child: TextWidget(
                                  text: "Test User",
                                  textSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  maxLine: 1,
                                  align: TextAlign.start)),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 2.0, right: 5, bottom: 2),
                            child: TextWidget(
                                text: "+91 1234569870",
                                textSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                maxLine: 1,
                                align: TextAlign.start),
                          ),
                        ],
                      )),
                  Positioned(
                    top: 75,
                    right: 0,
                    child: Card(
                      color: AppColors.primaryColor,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/contactUs');
                        },
                        child: Container(
                          width: Get.width - 125,
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Lottie.asset('assets/animations/call.json',
                                    height: 25, width: 30),
                                const SizedBox(
                                  width: 5,
                                ),
                                const TextWidget(
                                    text: "Contact Support",
                                    textSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.white,
                                    maxLine: 1,
                                    align: TextAlign.start),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 7, bottom: 2, left: 7),
                      child: InkWell(
                        onTap: () {
                          FlutterClipboard.copy('WEBAPPSSOL-123456').then(
                              (value) => Fluttertoast.showToast(msg: "copied"));
                        },
                        child: Container(
                          height: 75,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/png/dotted_box.png"),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              TextWidget(
                                  text: "Referral Code : WEBAPPSSOL-123456",
                                  textSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.start),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.copy,
                                color: AppColors.black,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GreyDivider.Divider(),
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: const BoxDecoration(
                                color: AppColors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        iconList[index],
                                        size: 18,
                                        color: AppColors.black,
                                      ),
                                      const SizedBox(width: 8),
                                      TextWidget(
                                          text: txtList[index],
                                          textSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.black,
                                          maxLine: 1,
                                          align: TextAlign.start)
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.black,
                                    size: 10,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              if (index == 0) {
                                _landingController.selectIndex.value = 3;
                              } else if (index == 1) {
                                Get.toNamed(AppRoutes.myAddress);
                              } else if (index == 2) {
                                Get.toNamed(AppRoutes.walletScreen);
                              } else if (index == 3) {
                                Get.toNamed('/editProfile');
                              } else if (index == 4) {
                                HelperSnackBar.snackBar(
                                    'Error', "Sorry we are working here");
                              } else if (index == 5) {
                                HelperSnackBar.snackBar(
                                    'Error', "Sorry we are working here");
                              } else if (index == 6) {
                                Get.toNamed('/aboutUs');
                              } else if (index == 7) {
                                Get.toNamed('/contactUs');
                              } else if (index == 8) {
                                Get.toNamed(AppRoutes.faq);
                              } else if (index == 9) {
                                showLogoutPopup(context);
                              }
                            });
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 5,
                          color: AppColors.dividercolor,
                        );
                      },
                      itemCount: txtList.length,
                    ),
                    Container(
                      height: 5,
                      color: AppColors.dividercolor,
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                // width: 120,
                                color: Colors.grey.shade300,
                                child: TextWidget(
                                    text:
                                        "${DateTime.now().year} \u00a9 Vatki Clothing Store",
                                    textSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    align: TextAlign.start),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 60,
                                color: Colors.grey.shade300,
                                child: TextWidget(
                                    text: version == ""
                                        ? "v 1.0.0"
                                        : "v ${version.replaceRange(4, 5, buildNumber)}",
                                    textSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    align: TextAlign.start),
                              )
                            ],
                          ),
                          const SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                  text: "Developed by: ",
                                  textSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.start),
                              InkWell(
                                onTap: () {
                                  _launch("https://webcanteen.com/");
                                },
                                child: TextWidget(
                                    text: "WebCanteen",
                                    textSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor,
                                    maxLine: 1,
                                    align: TextAlign.start),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () => _launch("https://webcanteen.com/"),
                            child: const TextWidget(
                                text: "www.webcanteen.com",
                                textSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                maxLine: 1,
                                align: TextAlign.start),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      log("Not supported");
    }
  }
}
