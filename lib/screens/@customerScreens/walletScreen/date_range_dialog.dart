// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../utils/constant/app_color.dart';

class  DateRangeDialog{
  static Future<dynamic> dateRangeDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Align(
                alignment: Alignment.center, child: Text('Select Date')),
            content: SizedBox(
              height: Get.height * 0.5,
              width: Get.width,
              child: SfDateRangePicker(
                showActionButtons: true,
                onCancel: () {
                  Navigator.pop(context);
                },
                onSubmit: (val) {
                  Navigator.pop(context);
                },
                monthViewSettings:const  DateRangePickerMonthViewSettings(
                  viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle:
                      TextStyle(color: AppColors.black, fontSize: 16)),
                ),
                headerStyle: const DateRangePickerHeaderStyle(
                    textStyle: TextStyle(color: AppColors.black, fontSize: 16)),
                monthCellStyle: const DateRangePickerMonthCellStyle(
                    textStyle: TextStyle(color: AppColors.black, fontSize: 16)),
                selectionTextStyle: const TextStyle(color: AppColors.white),
                rangeTextStyle: const TextStyle(color: AppColors.white),
                todayHighlightColor: AppColors.primaryColor,
                onSelectionChanged: _onSelectionChanged,
                startRangeSelectionColor: Colors.indigo,
                endRangeSelectionColor: Colors.indigo,
                rangeSelectionColor: Colors.indigo.withOpacity(0.3),
                // Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
                selectionShape: DateRangePickerSelectionShape.rectangle,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 7)),
                  DateTime.now().add(const Duration(days: 0)),
                ),
              ),
            ),
          );
        });
  }
  static void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
   /* startDate = DateFormat('yyyy-MM-dd').format(args.value.startDate);
    endDate = DateFormat('yyyy-MM-dd')
        .format(args.value.endDate ?? args.value.startDate);
    showStartDate = DateFormat('dd/MM/yyyy').format(args.value.startDate);
    showEndDate = DateFormat('dd/MM/yyyy')
        .format(args.value.endDate ?? args.value.startDate);

    int daysBetween(DateTime from, DateTime to) {
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      return (to.difference(from).inHours / 24).round();
    }

    var parts = endDate.split('-');
    final birthday = DateTime(args.value.startDate.year,
        args.value.startDate.month, args.value.startDate.day);
    final date2 =
    DateTime(int.parse(parts[0]), int.parse(parts[1]), int.parse(parts[2]));
    // final difference = daysBetween(birthday, date2);

    // if (difference > 30) {
    //   HelperSnackBar.snackBar("Error", "Please select date between 30 days.");
    // }*/
  }


}

class TextFieldClear extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  int maxLine;
  String? showStartDate, showEndDate;
  final IconData suffixIcon;
  final Function(String?) onchanged;
  final Function() onTap1;
  final Function() onTap2;

  TextFieldClear({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLine = 1,
    this.showEndDate,
    this.showStartDate,
    required this.onchanged,
    required this.onTap1,
    required this.onTap2,
    //required this.isSuffix,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      color: AppColors.dividercolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: onTap1,
            child: Container(
              width: 52,
              height: 52,
              decoration: const BoxDecoration(
                  color: Color(0xFF7367F0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3),
                      // topRight: Radius.circular(5),
                      // bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(3))),
              child: const Icon(
                Icons.today_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          showStartDate != null && showEndDate != null
              ? Expanded(
            child: GestureDetector(
              onTap: onTap1,
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                    color: AppColors.dividercolor,
                    borderRadius: const BorderRadius.only(
                      // topLeft: Radius.circular(3),
                      topRight: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                      // bottomLeft: Radius.circular(3)
                    )),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("From : ${showStartDate!}",
                            style: const TextStyle(
                                color: AppColors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w800)),
                        Text("  -  To : ${showEndDate!}",
                            style: const TextStyle(
                                color: AppColors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}
