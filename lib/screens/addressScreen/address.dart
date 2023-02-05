import 'dart:developer';

import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/dailog/delete_address.dart';
import '../../widgets/textWidget/text_widget.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'My Address', isCenter: false, isBackHelper: true),
      body: Padding(
        padding: const EdgeInsets.only(right: 6, left: 6, top: 12),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                 Get.toNamed("/addEditAddress",arguments: [
                   false,
                 ]);
              },
              tileColor: AppColors.greenColor,
              leading: const Icon(
                Icons.add,
                color: AppColors.white,
              ),
              title: const TextWidget(
                  text: "Add New Delivery Address",
                  textSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  maxLine: 1,
                  align: TextAlign.center),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (ctx, i) {
                  return Stack(
                    children: [
                      Card(
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(color: AppColors.grey, width: 1),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                const TextWidget(
                                    text: "User Name ",
                                    textSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    align: TextAlign.center),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: const Center(
                                    child: TextWidget(
                                        text: "Type",
                                        textSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white,
                                        maxLine: 1,
                                        align: TextAlign.center),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, right: 8, bottom: 8),
                                child: TextWidget(
                                    text:
                                        "Zeta 1 , Greater Noida, UP, India, Earth, Solar System, Universe$i",
                                    textSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    maxLine: 2,
                                    align: TextAlign.left),
                              ),
                              const TextWidget(
                                  text: "9876543210",
                                  textSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.center),
                              const SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: PopupMenuButton<int>(
                          onSelected: _onTapMenu,
                          itemBuilder: (context) => const [
                            PopupMenuItem(
                              value: 0,
                              child: TextWidget(
                                  text: "Edit",
                                  textSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.center),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: TextWidget(
                                  text: "Delete",
                                  textSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.center),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapMenu(val) {
    if (val == 0) {
      Get.toNamed("/addEditAddress",arguments: [
        true,
      ]);
    }
    if (val == 1) {
      DeleteAddress.deletePopup(context, 'are you sure want to delete this address?').then((value) {
        if(value){
          log('123');
        }
      });
    }
  }
}
