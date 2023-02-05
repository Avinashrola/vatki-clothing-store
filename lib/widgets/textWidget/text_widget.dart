// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final FontWeight fontWeight;
  final Color color;
  final int maxLine;
  final TextAlign align;

  const TextWidget({
    Key? key,
    required this.text,
    required this.textSize,
    required this.fontWeight,
    required this.color,
    required this.maxLine,
    required this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: align,
      style: Theme.of(context).textTheme.headline1!.copyWith(
            fontSize: textSize,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}
