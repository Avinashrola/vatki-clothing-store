import 'dart:async';

import 'package:Vatki_Clothing_Store/controllers/connectivityController/connectivity_controller.dart';
import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ConnectivityController connectivityController =
      Get.put(ConnectivityController());
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed('/landingPage');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Get.height,
          width: Get.width,
          color: AppColors.white,
        child: Center(
          child: Image.asset(
            'assets/jpg/logo.jpg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
