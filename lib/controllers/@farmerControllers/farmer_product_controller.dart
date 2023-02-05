// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'package:Vatki_Clothing_Store/utils/helper/helper_sncksbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io' as io;

import 'package:image_picker/image_picker.dart';

class FarmerProductController extends GetxController {
  List<XFile> imgList = [];
  final ImagePicker _picker = ImagePicker();
  List<String> base64List = [];
  XFile? picture;

  List<XFile>? resultList = <XFile>[];

  void removeImage(index) {
    imgList.removeAt(index);
    // base64List.removeAt(index);
    update();
  }

  void openCamera(BuildContext context) async {
    try {
      picture = await _picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 500,
        maxWidth: 500,
        imageQuality: 60,
      );
      if (picture != null) {
        final bytes = io.File(picture!.path).readAsBytesSync();
        String img64 = "data:image/jpeg;base64,${base64Encode(bytes)}";
        base64List.add(img64);
        imgList.add(picture!);
        update();
      }
    } catch (e) {
      log(e.toString());
    }
    Navigator.of(context).pop();
  }

  Future<void> loadAssets() async {
    try {
      resultList = await _picker.pickMultiImage(
        maxHeight: 500,
        maxWidth: 500,
        imageQuality: 60,
      );

      //  imgList.clear();
      if (resultList!.length <= 3) {
        imgList = resultList!;
        Get.back();
      } else {
        Get.back();
        resultList!.clear();
        HelperSnackBar.snackBar('Error', 'Maximum Image 3');
      }
      update();
    } catch (e) {
      log(e.toString());
    }
  }

  // saveImages() async {
  //   if (imgList.isNotEmpty) {
  //     base64List.clear();
  //     for (int i = 0; i < imgList.length; i++) {
  //       //   final byteData = await imgList[i].getByteData();
  //       final byteData = await imgList[i].readAsBytes();
  //       final tempFile =
  //           File("${(await getTemporaryDirectory()).path}/${imgList[i].name}");
  //       final file = await tempFile.writeAsBytes(
  //         byteData.buffer
  //             .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
  //       );
  //       final bytes = await file.readAsBytes();
  //       String base64Encode(List<int> bytes) => base64.encode(bytes);
  //       String img64 = "data:image/jpeg;base64," + base64Encode(bytes);
  //       // String img64 = base64Encode(bytes);
  //       base64List.add(img64);
  //       // print(img64);
  //     }
  //     print(imgList.length);
  //   }
  // }
}
