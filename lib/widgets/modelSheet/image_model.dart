import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';

class AddAttachment {
  static addAttachmentSheet(BuildContext context,
      {required VoidCallback onCam, required VoidCallback onGall}) {
    final size = MediaQuery.of(context).size;
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 30),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: AppColors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onCam,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 34,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onGall,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      child: const Icon(
                        Icons.image,
                        size: 34,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
