import 'package:flutter/material.dart';

class AppConfig {
  static Color primaryWhite = Color(0xfffffffff);
  static Color primaryBackgroundColorGrey = Colors.grey[200]!;
  static Color secondColorGrey = Colors.grey;
  static Color primaryTextColorBlack = Colors.black;
  static Color secondTextColorGery = Colors.grey[800]!;
  static Color primaryBackgroundColorRed = Color(0xffe32525);
  static Color primaryColorYellow = Color(0xffffc107);
  static Color primaryColorPink = Color.fromRGBO(242, 48, 48, 0.2);
}

class AppTextStyle {
  static TextStyle appTextStyle(Color color, double size,
      {FontWeight fw = FontWeight.normal, double? letterSpacing}) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fw,
        letterSpacing: letterSpacing);
  }
}
