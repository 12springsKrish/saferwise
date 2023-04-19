import 'package:flutter/material.dart';

class CustomTextStyles {
  static normal(
      {required fontSize, required fontColor, bool? isUnderLine, fontWeight}) {
    return TextStyle(
        color: fontColor,
        fontFamily: "NunitoSans-Regular",
        fontSize: fontSize,
        decoration: isUnderLine == true
            ? TextDecoration.underline
            : TextDecoration.none,
        fontWeight: fontWeight);
  }

  static bold({required fontSize, required fontColor, fontWeight}) {
    return TextStyle(
        color: fontColor,
        fontFamily: "NunitoSans-Bold",
        fontSize: fontSize,
        fontWeight: fontWeight);
  }


  static semiBold({required fontSize, required fontColor,fontWeight}) {
    return TextStyle(
        color: fontColor, fontFamily: "NunitoSans-SemiBold", fontSize: fontSize,fontWeight: fontWeight);
  }
}
