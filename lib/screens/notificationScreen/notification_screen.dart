import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/textWidget/text_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(color: AppColors.black),
        title: const TextWidget(
            text: 'Notification',
            textSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            maxLine: 1,
            align: TextAlign.left),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor),
              child: const TextWidget(
                  text: 'Read All',
                  textSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                  maxLine: 1,
                  align: TextAlign.left),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: () {},
            child: Card(
              elevation: 4,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.notifications,
                        size: 35, color: AppColors.primaryColor),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const SizedBox(
                          height: 7,
                        ),
                        TextWidget(
                            text: 'Notification message',
                            textSize: 17,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black65,
                            maxLine: 1,
                            align: TextAlign.left),
                        const SizedBox(
                          height: 7,
                        ),
                        const TextWidget(
                            text: 'notificationDate',
                            textSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                            maxLine: 1,
                            align: TextAlign.left),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
