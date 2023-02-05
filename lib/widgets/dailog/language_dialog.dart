

import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';

class LanguageDialog{
  static languageDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:  AppColors.white,
          titlePadding: const EdgeInsets.only(left: 24, right: 1, top: 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:  EdgeInsets.only(top: 16),
                child: Text(
                  'Select Language',
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close))
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Image.network(
                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd8o2LtrxIEyFQnrkddM5hy8OZfSad4bGKJg&usqp=CAU",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Hindi',
                        style: TextStyle(
                            fontSize: 20,
                            color:  AppColors.black,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjjl7ZJ8G9EHqWpIite_MqSzYOxTcx9-wBX3hyqdTMyyD3pz-FmH-gm5SALWvakWgLnk&usqp=CAU",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    const  Text(
                        'English',
                        style: TextStyle(
                            fontSize: 20,
                            color:  AppColors.black,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        );
      },
    );
  }

}