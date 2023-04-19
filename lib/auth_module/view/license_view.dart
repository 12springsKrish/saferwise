import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/license_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_dropdown.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/helper/constants.dart';
import '../../core/helper/custom_widgets/custom_button.dart';
import '../../core/helper/custom_widgets/custom_form_fields.dart';
import '../../core/services/textStyles.dart';

class LicenseView extends GetWidget<TimeLineController> {
  toggleSwitch() {
    return ToggleSwitch(
      labels: const ["Yes", "No"],
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            question,
            style: CustomTextStyles.semiBold(
                fontSize: 14.0, fontColor: darkGrayColor),
          ),
          toggleSwitch()
        ]),
        const SizedBox(
          height: 40,
        )
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
                    InkWell(onTap: (){Navigator.pop(context);},child: Image.asset(SvgResources.backButton)),
                    const SizedBox(
                      width: 110,
                    ),
                    Text("Licenses",
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
                      CustomFormField(
                        hintText: "License Number",
                        controller: controller.licenseNoController,
                        focusNode: controller.focusLicenseNo,
                      ),
                      CustomFormField(
                        hintText: "State/Province",
                        controller: controller.provinceController,
                        focusNode: controller.focusProvince,
                        suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                      ),
                      CustomFormField(
                        hintText: "Country",
                        controller: controller.countryController,
                        focusNode: controller.focusCountry,
                        suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                      ),
                     /* CustomDropDown.dropdown(
                          items: ["ABC", "DEF", "GHI"],
                          initialValue: "ABC",
                          selectedValue: "ABC"),
                      CustomDropDown.dropdown(
                          items: ["ABC", "DEF", "GHI"],
                          initialValue: "ABC",
                          selectedValue: "ABC"),*/
                      CustomFormField(
                        hintText: "License Expiry Date",
                        suffix: Icon(Icons.calendar_today_outlined,size: 18,color: grayBg,),

                        controller: controller.licenseExpiryController,
                        focusNode: controller.focusLicenseExpiry,
                      ),
                      CustomFormField(
                        hintText: "Physical Expiry Date",
                        suffix: Icon(Icons.calendar_today_outlined,size: 18,color: grayBg,),

                        controller: controller.physicalExpiryController,
                        focusNode: controller.focusPhysicalExpiry,
                      ),
                      const SizedBox(height: 40,),
                      toggleRow(AppStrings.currentLicense),
                      toggleRow(AppStrings.commercialLicense),
                      CustomFormField(
                        hintText: "Endorsements",
                        controller: controller.endorsementsController,
                        focusNode: controller.focusEndorsements,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.uploadLicense,
                            style: CustomTextStyles.semiBold(
                                fontSize: 14.0, fontColor: grayColor),
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.upload_file))
                        ],
                      ),
                      SizedBox(height: 20,),
                      CustomButton.normalButton(
                          title: "Next",
                          onTap: () {

                            controller.isLicenses.value = true;
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
