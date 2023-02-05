import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';

Future<bool> chooseImage({
 required BuildContext context,
  required Function() onTapCamera,
  required Function() onTapGallery,
}) async {
  final width = MediaQuery.of(context).size.width;
  return await showDialog(
    context: context,
    builder: (context) =>  Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(alignment: Alignment.center, children: [
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
              ListTile(
                leading: const Icon(Icons.camera_alt,color: AppColors.primaryColor,size: 30,),
                title: const Text(
                  'Take Photo',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                ),
                onTap: onTapCamera,
              ),
              ListTile(
                leading: const Icon(Icons.image,color: AppColors.primaryColor,size: 30,),
                title: const Text(
                  'Choose from Gallery',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)
                ),
                onTap: onTapGallery,
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context,false);
                },
                child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8,right: 20,left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.redColors,
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.white, fontSize: 17),
                    )),
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
                color: AppColors.primaryColor,
                border: Border.all(
                    color: AppColors.white, width: 4)),
            child: const Icon(
              Icons.image,
              size: 40,
              color: AppColors.white,
            ),
          ),
        ),
      ],),
    ),) ??
      false;
}
