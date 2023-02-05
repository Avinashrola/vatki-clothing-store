// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constant/app_color.dart';
import '../../../../widgets/textWidget/text_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<String> nameList = [
    "Price",
    "Customer Rating",
    "Offers",
    "Discount",
    "Availability",
    "Category",
  ];

  void _clearFilter(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(color: AppColors.black),
        title: const TextWidget(
            text: "Filter",
            textSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
            maxLine: 1,
            align: TextAlign.center),
        actions: [
          TextButton(
              onPressed: _clearFilter,
              child: const TextWidget(
                  text: "CLEAR FILTER",
                  textSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  maxLine: 1,
                  align: TextAlign.center)),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.withOpacity(0.2),
            width: Get.width * 0.35,
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: nameList.length,
                  itemBuilder: (ctx, i) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        color: i==1 ? AppColors.white : AppColors.transparent,
                        child: Center(
                          child: TextWidget(
                              text: nameList[i],
                              textSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.center),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: getCurrentList(0),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor, // foreground
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Apply'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ListView getCurrentList(index) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: 4,
      itemBuilder: (ctx, i) {
        return CheckboxListTile(
          checkColor: Colors.white,
          selected: true,
          title: Align(
            alignment: Alignment.centerLeft,
            child: TextWidget(
                text: nameList[i],
                textSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
                maxLine: 1,
                align: TextAlign.center),
          ),
          onChanged: (bool? value) {},
          value: true,
        );
      },
    );
  }
}
