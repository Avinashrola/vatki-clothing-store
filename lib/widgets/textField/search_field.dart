import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/app_icon.dart';

class SearchField {
  static Card field(
      {required TextEditingController ctrl,
      required Function(String) onChanged}) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(0),
      child: TextField(
        controller: ctrl,
        decoration: InputDecoration(
          prefixIcon: AppIcons.searchIcon,
          
          border: InputBorder.none,
          hintText: 'Search',
        ),
        onChanged: onChanged,
      ),
    );
  }
  static Positioned fieldOnTap() {
    return Positioned(
      bottom: 0,
      right: 16,
      left: 16,
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.all(0),
        child: TextField(
          readOnly: true,
          onTap: (){
            Get.toNamed("searchProduct");
          },
          decoration: InputDecoration(
            prefixIcon: AppIcons.searchIcon,
            border: InputBorder.none,
            hintText: 'Search for...',
          ),
        ),
      ),
    );
  }
}
