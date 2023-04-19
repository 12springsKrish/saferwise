
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';
import '../custom_colors.dart';
import '../resources.dart';

class CustomButton {
  static normalButton(
      {title,
        onTap,
        backgroundColor,
        txtColor,
        fontSize,
        height,
        borderRadius,
        EdgeInsets? padding,
        isLoading = false}) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: MaterialButton(
        onPressed: onTap,
        color: grayBg,
        height: height ?? 44.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 50.0),
        ),
        disabledColor: grayBg,
        child: Center(
          child: Text(
            title,
            style: CustomTextStyles.semiBold(
                fontSize: fontSize ?? 17.0,
                fontColor: txtColor ?? Colors.white),
          ),
        ),
      ),
    );
  }

  static borderButton(
      {title, Function? onPress, borderColor, borderWidth, textColor}) {
    return InkWell(
      onTap: () {
        if (onPress != null) {
          onPress();
        }
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        decoration: BoxDecoration(
            border: Border.all(
                color: borderColor ?? darkBlueColor, width: borderWidth ?? 2.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          title ?? "",
          style: CustomTextStyles.semiBold(
              fontSize: 18.0, fontColor: textColor ?? darkBlueColor),
        ),
      ),
    );
  }

  static backButton({Function? onPress}) {
    return IconButton(
        onPressed: () {
          if (onPress != null) {
            onPress();
          } else {
            Get.back();
          }
        },
        icon: Image.asset(SvgResources.backButton));
  }
}
