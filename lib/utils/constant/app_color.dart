import 'package:flutter/material.dart';

class AppColors {
  ///primary color
  static const Color primaryColor = Color(0xFFC09578);
  static const Color primaryColorDark = Color(0xFFAC8164);
  static const Color primaryColorLight = Color.fromARGB(255, 236, 195, 167);
  static const Color primaryColorGrey = Color(0xFFD9D9D9);

  /// white color
  static const Color white = Colors.white;
  static const Color white60 = Colors.white60;

  /// black color
  static const Color black = Colors.black;
  static Color get dividercolor => const Color(0xFFe9e9e9);

  static Color black65 = Colors.black.withOpacity(0.65);

  /// grey colors
  static const Color grey = Colors.grey;
  static Color grey300 = Colors.grey.shade300;
  static Color grey400 = Colors.grey.shade400;
  static Color grey500 = Colors.grey.shade500;

  /// red colors.......
  static const Color darkRedColors = Color(0xFFAF000F);
  static const Color redColors = Color(0xFFEA0000);

  /// transparent colors.......
  static const Color transparent = Colors.transparent;

  /// green colors.......
  static const Color darkGreen = Color(0xFF1F9900);
  static const Color greenColor = Color(0xFF25C00C);
  static const Color lightGreen = Color(0XFF07AB18);
  static const Color buttonlightGreen = Color(0XFF6ad050);

  /// cyan color
  static const Color cyanColor = Colors.cyan;

  /// yellow color
  static const Color yellowColor = Colors.yellow;
  static const Color amberColor = Colors.amber;

  /// orange color
  static const Color orangeColor = Color(0XFFFCBC19);

  /// gradiant color
  static final gradiantColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0XFF498A38),
      const Color(0XFF6AD050),
      const Color(0XFFFAFF07).withOpacity(0.6),
      const Color(0XFFFFFFFF),
    ],
  );
  static Map<int, Color> colorPrimarySwatch = {
    50: const Color(0XFF498A38),
    100: const Color(0XFF498A38),
    200: const Color(0XFF498A38),
    300: const Color(0XFF498A38),
    400: const Color(0XFF498A38),
    500: const Color(0XFF498A38),
    600: const Color(0XFF498A38),
    700: const Color(0XFF498A38),
    800: const Color(0XFF498A38),
    900: const Color(0XFF498A38),
  };
}
