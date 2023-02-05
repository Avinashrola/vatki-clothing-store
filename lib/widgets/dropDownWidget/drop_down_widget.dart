import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';
import '../textWidget/text_widget.dart';

class DropDownWidget extends StatefulWidget {
  final String status;
  final Color color;
  final List<String> statusList;
  final Function(String?) onChanged;
  final double circleVal;
  final double height;

  const DropDownWidget(
      {Key? key,
      required this.status,
      required this.statusList,
      required this.onChanged,
      required this.circleVal,
      required this.color,
      required this.height})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      padding: const EdgeInsets.only(left: 12, right: 12),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(widget.circleVal),
        border: Border.all(color: widget.color, width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          hint: TextWidget(
              text: widget.status,
              textSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              maxLine: 2,
              align: TextAlign.left),
          items: widget.statusList.map((String value) {
            return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ));
          }).toList(),
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
