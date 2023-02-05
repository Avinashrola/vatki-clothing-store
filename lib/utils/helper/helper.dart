import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class Helper {
  static String formatPrice(String text) {
    return "\u{20B9} $text";
  }

  static String formatDate(String date) {
    return DateFormat("dd-MM-yyy").format(DateTime.parse(date));
  }

  static String timeFormatter(
      {required String dTime, required String meridian}) {
    String time = dTime;
    String format = meridian;
    String sendTime = '';
    if (format == 'PM') {
      List<String> getList = time.split(':');
      int timeInt = int.parse(getList[0]);
      sendTime = '${timeInt + 12}:${getList[1]}';
    } else {
      sendTime = time;
    }
    return sendTime;
  }

  static imageLoader() {
    return Container(
        color: Colors.black12,
        child: const SpinKitThreeBounce(size: 18, color: Colors.black));
  }

  static dialogLoader(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SpinKitThreeBounce(size: 30, color: Colors.white);
      },
    );
  }

  static pageLoading() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black12,
        child: const SpinKitThreeBounce(size: 30, color: Colors.black));
  }

  static loader(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SpinKitThreeBounce(size: 30, color: Colors.white);
      },
    );
  }
}
