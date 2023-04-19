import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/fmcsr_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_button.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_form_fields.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FmcsrView extends GetWidget<TimeLineController> {
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
          Expanded(
            child: Text(
              question,
              style: CustomTextStyles.semiBold(
                  fontSize: 14.0, fontColor: darkGrayColor),
            ),
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
                    Text("FMCSR",
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
                      toggleRow(
                        AppStrings.disqualify,
                      ),
                      toggleRow(AppStrings.suspended),
                      toggleRow(AppStrings.denied),
                      toggleRow(AppStrings.alcohol),
                      toggleRow(AppStrings.offenses),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Vehicle Accident Report',
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppStrings.accident,
                        style: CustomTextStyles.semiBold(
                            fontSize: 14.0, fontColor: grayColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomFormField(
                        hintText: "Accident 1",
                        controller: controller.provinceController, //need to change
                        /*focusNode: controller.focusProvince,*/
                        suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Traffic Convictions/Violations',
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomFormField(
                        hintText: "Violation 1",
                        controller: controller.provinceController, //need to change
                        /*focusNode: controller.focusProvince,*/
                        suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                      ),

                      Text(
                        AppStrings.violations,
                        style: CustomTextStyles.semiBold(
                            fontSize: 14.0, fontColor: grayColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      /*CustomDropDown.dropdown(items: ["test", "test2"]),*/
                      Text(
                        "Criminal Record",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      ),
                      toggleRow(AppStrings.crime),
                      toggleRow(AppStrings.prosecutions),
                      toggleRow(AppStrings.charges),
                      toggleRow(AppStrings.guilty),
                      toggleRow(AppStrings.felony),
                      toggleRow(AppStrings.misdemeanour),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Signatures",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0, fontColor: grayBg),
                      ),
                      CustomFormField(
                        hintText: "First Name",
                        controller: controller.fNameFmcsrController,
                        focusNode: controller.focusfNameFmcsr,
                        focusNext: controller.focusIpAdd,
                      ),
                      CustomFormField(
                        hintText: "IP Address",
                        controller: controller.ipAddController,
                        focusNode: controller.focusIpAdd,
                        focusNext: controller.focusSigDateTime,
                      ),

                      CustomFormField(
                        hintText: "Signature Date/Time (dd/mm/yyyy hh:mm:ss)",
                        controller: controller.sigDateTimeController,
                        focusNode: controller.focusSigDateTime,
                        focusNext: controller.focusSigDate,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(AppStrings.agree,
                          style: CustomTextStyles.semiBold(
                              fontSize: 14.0, fontColor: grayColor)),
                      CustomFormField(
                        hintText: "Signed Date (dd/mm/yyyy)",
                        controller: controller.sigDateController,
                        focusNode: controller.focusSigDate,
                        focusNext: controller.focusSigned,
                      ),
                      CustomFormField(
                        hintText: "Signed",
                        controller: controller.signedController,
                        focusNode: controller.focusSigned,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                       CustomButton.normalButton(title: "Next", onTap: () {
                         controller.isFmcsr.value = true;
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
