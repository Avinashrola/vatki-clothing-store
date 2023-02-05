

import 'package:Vatki_Clothing_Store/utils/helper/helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HelperImage{

  static imageNetwork({required String imgUrl, required String errorImage}) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      fit: BoxFit.fill,
      width: 1000.0,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
            //  colorFilter: const ColorFilter.mode(Colors.red, BlendMode.colorBurn),
          ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Helper.imageLoader(),
      errorWidget: (context, url, error) => SizedBox(
        child: SizedBox(
            child: Image.asset(errorImage)),
      ),
    );
  }

}