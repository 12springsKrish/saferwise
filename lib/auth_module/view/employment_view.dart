import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/employment_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_form_fields.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/helper/constants.dart';
import '../../core/helper/custom_colors.dart';
import '../../core/helper/custom_widgets/custom_button.dart';
import '../../core/services/textStyles.dart';

class EmploymentView extends GetWidget<TimeLineController> {
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
              height: 130,
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
                      width: 80,
                    ),
                    Text("Employment/ \nUnemployment",
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
                  height: 130,
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
                      /*CustomDropDown.dropdown(items: ["test", "test2"]),*/
                      CustomFormField(
                        hintText: "Company Name",
                        controller: controller.companyNameController,
                        focusNode: controller.focusCompanyName,
                        focusNext: controller.focusStartDate,
                      ),
                      CustomFormField(
                        hintText: "Start Date",
                        suffix: Icon(Icons.calendar_today_outlined,size: 18,color: grayBg,),

                        controller: controller.startDateController,
                        focusNode: controller.focusStartDate,
                        focusNext: controller.focusEndDate,
                      ),
                      CustomFormField(
                        hintText: "End Date",
                        suffix: Icon(Icons.calendar_today_outlined,size: 18,color: grayBg,),

                        controller: controller.endDateController,
                        focusNode: controller.focusEndDate,
                        focusNext: controller.focusAddress,
                      ),
                      CustomFormField(
                        hintText: "Address",
                        controller: controller.addressEmploymentController,
                        focusNode: controller.focusAddressEmployment,
                        focusNext: controller.focusCity,
                      ),
                      CustomFormField(
                        hintText: "City",
                        controller: controller.cityController,
                        focusNode: controller.focusCity,
                        focusNext: controller.focusProvince,
                      ),
                      CustomFormField(
                        hintText: "State/Province",
                        controller: controller.provinceController,
                        focusNode: controller.focusProvince,
                        suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                      ),
                     /* CustomDropDown.dropdown(items: ["Texas", "Illinois"]),*/
                      CustomFormField(
                        hintText: "Zip Code",
                        controller: controller.zipCodeController,
                        focusNode: controller.focusZipCode,
                        focusNext: controller.focusCountry,
                      ),
                      CustomFormField(
                        hintText: "Country",
                        controller: controller.provinceController,
                        focusNode: controller.focusProvince,
                        suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                      ),
                      /*CustomDropDown.dropdown(items: ["USA", "India"]),*/
                      CustomFormField(
                        hintText: "Mobile",
                        controller: controller.mobileEmploymentController,
                        focusNode: controller.focusMobileEmployment,
                        focusNext: controller.focusFax,
                      ),
                      CustomFormField(
                        hintText: "Fax Number",
                        controller: controller.mobileController,
                        focusNode: controller.focusMobile,
                        focusNext: controller.focusPosition,
                      ),
                      CustomFormField(
                        hintText: "Position held",
                        controller: controller.positionEmploymentController,
                        focusNode: controller.focusPositionEmployment,
                        focusNext: controller.focusReason,
                      ),
                      CustomFormField(
                        hintText: "Reason for Leaving",
                        controller: controller.reasonController,
                      ),
                      const SizedBox(height: 40,),
                      toggleRow(AppStrings.laidOff),
                      toggleRow(AppStrings.currentEmployer),
                      toggleRow(AppStrings.operate),
                      toggleRow(AppStrings.sensitive),
                      CustomFormField(
                        hintText: "Areas Driven",
                        controller: controller.areasController,
                        focusNode: controller.focusAreas,
                        focusNext: controller.focusMiles,
                      ),
                      CustomFormField(
                        hintText: "Miles Driven Weekly",
                        controller: controller.milesController,
                        focusNode: controller.focusMiles,
                        focusNext: controller.focusPay,
                      ),
                      CustomFormField(
                        hintText: "Miles Driven Weekly",
                        controller: controller.milesController,
                        focusNode: controller.focusMiles,
                        focusNext: controller.focusPay,
                      ),
                      CustomFormField(
                        hintText: "Pay Range (cents/mile)",
                        controller: controller.payController,
                        focusNode: controller.focusTruck,
                        focusNext: controller.focusTrailer,
                      ),
                      CustomFormField(
                        hintText: "Most Common Truck Driven",
                        controller: controller.trailerController,
                      /*  focusNode: controller.focusTrailer,
                        focusNext: controller.focusTrailer,*/
                      ),
                      CustomFormField(
                        hintText: "Most Common Truck Trailer",
                        controller: controller.trailerController,
                        focusNode: controller.focusTrailer,
                        focusNext: controller.focusTrailer,
                      ),
                      CustomFormField(
                        hintText: "Trailer Length",
                        controller: controller.trailerLengthController,
                        focusNode: controller.focusTrailerLength,
                      ),
                      const SizedBox(height: 40,),
                      const Divider(color: grayBg,thickness: 1,),
                      ExpansionTile(
                          title: Text(
                        "Employment",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      )),
                      const Divider(color: grayBg,thickness: 1,),
                      ExpansionTile(
                          title: Text(
                        "Unemployment",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      )),
                      const Divider(color: grayBg,thickness: 1,),
                      ExpansionTile(
                          title: Text(
                        "Schooling",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      )),
                      const Divider(color: grayBg,thickness: 1,),
                      const SizedBox(height: 50),
                      CustomButton.normalButton(title: "Next",onTap: (){
                        controller.isEmployment.value = true;
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
