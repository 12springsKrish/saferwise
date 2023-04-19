import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/authorization_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_button.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_form_fields.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/helper/custom_colors.dart';

class AuthorizationView extends GetWidget<TimeLineController>{

  toggleSwitch() {
    return ToggleSwitch(
      labels: const [
        "Yes", "No"
      ],
      activeBgColor: grayBg,
      inactiveBgColor: grayColor,
      cornerRadius: 20,
      minWidth: 45,
      minHeight: 19,
    );
  }

  toggleRow(String question) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(question, style: CustomTextStyles.semiBold(
                  fontSize: 14.0, fontColor: darkGrayColor),),
              toggleSwitch()
            ]
        ),
        const SizedBox(height: 40,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              SvgResources.bg_login2,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 68, left: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(SvgResources.backButton),
                    const SizedBox(
                      width: 90,
                    ),
                    Text("Authorization",
                        style: CustomTextStyles.bold(
                            fontSize: 20.0,
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w900)),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                /*  Image.asset(SvgResources.whiteBg2),*/
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Disclosure for Consumer Goods",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      ),
                      Text(AppStrings.disclosure, style: CustomTextStyles.semiBold(
                          fontSize: 14.0, fontColor: grayColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Add Signature",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      ),
                      CustomFormField(hintText: "", controller: controller.signedAuthController),
                      SizedBox(height: 30,),
                      CustomButton.normalButton(title: "Next", onTap: () {
                        controller.isAuthorization.value = true;
                        Get.toNamed(Routes.timeLineView);
                      })
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}