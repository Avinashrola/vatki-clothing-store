import 'package:flutter/material.dart';
import 'app_color.dart';

class AppIcons {
  static Icon get signPages => const Icon(
        Icons.ac_unit,
        size: 80,
        color: AppColors.black,
      );

  static Icon get rightArrow => const Icon(
        Icons.arrow_forward,
        size: 20,
        color: AppColors.white,
      );

  static Icon get cameraIcon => const Icon(
        Icons.camera_alt,
        size: 20,
        color: AppColors.black,
      );

  static Icon get locationIcon => const Icon(
        Icons.location_pin,
        size: 20,
        color: AppColors.black,
      );

  static Icon get downArrowIcon => const Icon(
        Icons.arrow_drop_down_sharp,
        size: 20,
        color: AppColors.black,
      );

  static Icon get searchIcon =>const Icon(
        Icons.search_rounded,
        size: 24 ,
        color: AppColors.black,
      );

  static Icon get addIcon => const Icon(
        Icons.add,
        size: 20 ,
        color: AppColors.white,
      );
  static Icon get currentLocation => const Icon(
    Icons.my_location,
    size: 20 ,
    color: AppColors.white,
  );
  static const IconData borderAll = IconData(0xe803);

  static Icon get filterIcon => const Icon(
        Icons.filter_alt_rounded,
        size: 24 ,
        color: AppColors.black,
      );

  static Icon get accountIcon => const Icon(
        Icons.account_circle,
        size: 30 ,
        color: AppColors.black,
      );

  static Icon get passwordIcon => const Icon(
        Icons.vpn_key,
        size: 30 ,
        color: AppColors.black,
      );

  static Icon get helpIcon => const Icon(
        Icons.phone,
        size: 30 ,
        color: AppColors.black,
      );

  static Icon get supportIcon => const Icon(
        Icons.support_agent_sharp,
        size: 30 ,
        color: AppColors.black,
      );

  static Icon get logoutIcon => const Icon(
        Icons.logout,
        size: 20 ,
        color: AppColors.white,
      );

  static Icon get smsIcon => Icon(
        Icons.sms_outlined,
        size: 22 ,
        color: AppColors.black65,
      );

  static Icon get callIcon => Icon(
        Icons.call,
        size: 22 ,
        color: AppColors.black65,
      );

  static Icon get emailIcon => Icon(
        Icons.email,
        size: 22 ,
        color: AppColors.black65,
      );

  static Icon get whatAppIcon => Icon(
        Icons.whatsapp,
        size: 22 ,
        color: AppColors.black65,
      );
}
