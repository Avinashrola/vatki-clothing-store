import 'package:Vatki_Clothing_Store/controllers/connectivityController/connectivity_controller.dart';
import 'package:Vatki_Clothing_Store/screens/@customerScreens/customerHomePage/homeWidgets/home_slider.dart';
import 'package:Vatki_Clothing_Store/screens/noInternetScreen/no_internet_screen.dart';
import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/divider/divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/textField/search_field.dart';
import '../landingScreen/landing_screen.dart';
import 'homeWidgets/head.dart';
import 'homeWidgets/product_section.dart';
import 'homeWidgets/top_category.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  ConnectivityController connectivityController =
      Get.put(ConnectivityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return connectivityController.isOnline.value == false
              ? const NoInternetScreen()
              : Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              height: 110,
                              decoration: const BoxDecoration(
                                // color: AppColors.primaryColor,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0.0, 0.4, 0.7, 1.0],
                                  colors: [
                                    Color(0xFFC09578),
                                    Color.fromARGB(255, 212, 169, 140),
                                    Color.fromARGB(255, 233, 193, 166),
                                    Color.fromARGB(255, 252, 218, 196),
                                  ],
                                ),
                              ),
                              width: Get.width,
                            )
                            // Image.asset(
                            //   'assets/png/Rectangle 2 2.png',
                            //   height: 130,
                            //   width: Get.width,
                            //   fit: BoxFit.fill,
                            // ),
                            ),
                        Head(
                          onTapNotification: () {
                            Get.toNamed('/notificationScreen');
                          },
                          onTapMenu: () {
                            keyDrawer.currentState!.openDrawer();
                          },
                          isCustomer: true,
                        ),
                        SearchField.fieldOnTap(),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            const TopCategory(),
                            const HomeSlider(
                              banners: [
                                "assets/jpg/banner1.jpg",
                                "assets/jpg/banner2.jpg",
                                "assets/jpg/banner1.jpg",
                              ],
                            ),
                            ProductSection(
                              sectionTitle: 'Fertilizers',
                              isBackground: true,
                              onTapMore: () {},
                              onTapProduct: () {
                                Get.toNamed(AppRoutes.productDetails);
                              },
                            ),
                            ProductSection(
                              sectionTitle: 'Seeds',
                              isBackground: false,
                              onTapMore: () {},
                              onTapProduct: () {
                                Get.toNamed(AppRoutes.productDetails);
                              },
                            ),
                            ProductSection(
                              sectionTitle: 'Agro Chemicals',
                              isBackground: true,
                              onTapMore: () {},
                              onTapProduct: () {
                                Get.toNamed(AppRoutes.productDetails);
                              },
                            ),
                            ProductSection(
                              sectionTitle: 'Natural Farming',
                              isBackground: false,
                              onTapMore: () {},
                              onTapProduct: () {
                                Get.toNamed(AppRoutes.productDetails);
                              },
                            ),
                            GreyDivider.Divider(),
                            SizedBox(
                              child: Image.asset(
                                'assets/png/Razorpay.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
        }),
      ),
    );
  }
}
