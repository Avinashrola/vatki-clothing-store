import 'package:Vatki_Clothing_Store/services/placeService/current_address.dart';
import 'package:Vatki_Clothing_Store/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../../../utils/constant/app_color.dart';
import '../../../../widgets/textWidget/text_widget.dart';

class Head extends StatefulWidget {
  final Function() onTapNotification;
  final Function() onTapMenu;

  final bool isCustomer;

  const Head(
      {Key? key,
      required this.onTapNotification,
      required this.onTapMenu,
      required this.isCustomer})
      : super(key: key);

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  RxString address = "Select Address".obs;

  @override
  void initState() {
    _getCurrentAddress();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // IconButton(
              //   icon: const Icon(
              //     Icons.location_on_outlined,
              //     color: AppColors.white,
              //   ),
              //   onPressed: () {},
              // ),
              // Expanded(
              //   child: InkWell(
              //     onTap: () {
              //       Helper.loader(context);

              //       _getCurrentAddress().then((value) {
              //         Get.back();
              //       });
              //     },
              //     child: Obx(() => TextWidget(
              //         text: address.value,
              //         textSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: AppColors.white,
              //         maxLine: 1,
              //         align: TextAlign.start)),
              //   ),
              // ),
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 28,
                  color: AppColors.black,
                ),
                onPressed: widget.onTapMenu,
              ),
              SizedBox(
                height: 70,
                width: 175,
                child: Image.asset(
                  'assets/png/pnglogo.png',
                  fit: BoxFit.contain,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      size: 28,
                      color: AppColors.black,
                    ),
                    onPressed: widget.onTapNotification,
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.orangeColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const TextWidget(
                          text: "5",
                          textSize: 9,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.left),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future _getCurrentAddress() async {
    Position position = await GetCurrentAddress.getGeoLocationPosition();

    Placemark place = await GetCurrentAddress.getAddressFromLatLong(position);
    address.value =
        "${place.subLocality}, ${place.subAdministrativeArea}, ${place.locality} - ${place.postalCode}";
  }
}
