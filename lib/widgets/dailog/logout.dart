import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/app_color.dart';

Future<bool> showLogoutPopup(
  BuildContext context,
) async {
  final width = MediaQuery.of(context).size.width;
  return await showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 12),
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.brown,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Are you sure want to logout?',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.redColors,
                                ),
                                child: const Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.signinScreen);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.primaryColor,
                                ),
                                child: const Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.redColors,
                      border: Border.all(color: AppColors.white, width: 4)),
                  child: const Icon(
                    Icons.logout,
                    size: 40,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ) ??
      false;
}
