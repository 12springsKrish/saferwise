import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/personal_information_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_button.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_form_fields.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PersonalInformationView extends GetWidget<TimeLineController> {

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
                    InkWell(onTap: (){Navigator.pop(context);},child: Image.asset(SvgResources.backButton)),
                    const SizedBox(
                      width: 60,
                    ),
                    Text("Personal Information",
                        style: CustomTextStyles.bold(
                            fontSize: 20.0,
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w900))
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
                    hintText: "First Name",
                    controller: controller.fNameController,
                    focusNode: controller.focusfName,
                    focusNext: controller.focuslName,
                  ),
                  CustomFormField(
                    hintText: "Last Name",
                    controller: controller.lNameController,
                    focusNode: controller.focuslName,
                    focusNext: controller.focuslName,
                  ),
                  CustomFormField(
                    hintText: "Date of Birth",
                    controller: controller.dobController,
                    focusNode: controller.focusDob,
                    suffix: Icon(Icons.calendar_today_outlined,size: 18,color: grayBg,),
                    focusNext: controller.focusPhone,
                  ),
                  CustomFormField(
                    hintText: "Phone",
                    controller: controller.phoneController,
                    focusNode: controller.focusPhone,
                    focusNext: controller.focusMobile,
                  ),
                  CustomFormField(
                    hintText: "Mobile",
                    controller: controller.mobileController,
                    focusNode: controller.focusMobile,
                    focusNext: controller.focusEmail,
                  ),
                  CustomFormField(
                    hintText: "Email",
                    controller: controller.emailController,
                    focusNode: controller.focusEmail,
                    focusNext: controller.focusSsn,
                  ),
                  CustomFormField(
                    hintText: "SSN/SIN",
                    controller: controller.ssnController,
                    focusNode: controller.focusSsn,
                    focusNext: controller.focusAddress,
                  ),
                  CustomFormField(
                    hintText: "Address Details",
                    controller: controller.addressController,
                    focusNode: controller.focusAddress,
                    suffix: Icon(Icons.chevron_right,size: 18,color: grayBg,),
                    focusNext: controller.focusEquipmentType,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "General Information",
                    style: CustomTextStyles.bold(
                        fontSize: 16.0,
                        fontColor: grayBg,
                        fontWeight: FontWeight.w700),
                  ),
                  CustomFormField(
                    hintText: "What position are you looking for?",
                    controller: controller.positionController,
                    focusNode: controller.focusPosition,
                    suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 18,color: grayBg,),
                    focusNext: controller.focusEquipmentType,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Equipment (Owner/Operators only)",
                    style: CustomTextStyles.bold(
                        fontSize: 16.0,
                        fontColor: grayBg,
                        fontWeight: FontWeight.w700),
                  ),
                  CustomFormField(
                    hintText: "Type",
                    controller: controller.equipmentTypeController,
                    focusNode: controller.focusEquipmentType,
                    focusNext: controller.focusEquipmentYear,
                  ),
                  CustomFormField(
                    hintText: "Year",
                    controller: controller.equipmentYearController,
                    focusNode: controller.focusEquipmentYear,
                    focusNext: controller.focusEquipmentMake,
                  ),
                  CustomFormField(
                    hintText: "Make",
                    controller: controller.equipmentMakeController,
                    focusNode: controller.focusEquipmentMake,
                    focusNext: controller.focusEquipmentModel,
                  ),
                  CustomFormField(
                    hintText: "Model",
                    controller: controller.equipmentModelController,
                    focusNode: controller.focusEquipmentModel,
                    focusNext: controller.focusEquipmentColor,
                  ),
                  CustomFormField(
                    hintText: "Color",
                    controller: controller.equipmentColorController,
                    focusNode: controller.focusEquipmentColor,
                    focusNext: controller.focusEquipmentVin,
                  ),
                  CustomFormField(
                    hintText: "Vin #",
                    controller: controller.equipmentVinController,
                    focusNode: controller.focusEquipmentVin,
                    focusNext: controller.focusEquipmentWeight,
                  ),
                  CustomFormField(
                    hintText: "Weight",
                    controller: controller.equipmentWeightController,
                    focusNode: controller.focusEquipmentWeight,
                    focusNext: controller.focusEquipmentMileage,
                  ),
                  CustomFormField(
                    hintText: "Mileage",
                    controller: controller.equipmentMileageController,
                    focusNode: controller.focusEquipmentMileage,
                    focusNext: controller.focusEquipmentWheelHeight,
                  ),
                  CustomFormField(
                    hintText: "Fifth Wheel Height",
                    controller: controller.equipmentWheelHeightController,
                    focusNode: controller.focusEquipmentWheelHeight,
                    focusNext: controller.focusLocation,
                  ),
                  CustomFormField(
                    hintText: "Location Applying For?",
                    controller: controller.locationController,
                    focusNode: controller.focusLocation,
                    focusNext: controller.focusEquipmentWeight,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  toggleRow(AppStrings.eligibility),
                  toggleRow(AppStrings.employment),
                  toggleRow(AppStrings.language),
                  toggleRow(AppStrings.workedBefore),
                  toggleRow(AppStrings.twicCard),
                  toggleRow(AppStrings.otherName),
                  Text(
                    "Driving Experience",
                    style: CustomTextStyles.bold(
                        fontSize: 16.0,
                        fontColor: grayBg,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10,),
                  Text(AppStrings.drivingExperience,
                    style: CustomTextStyles.semiBold(
                        fontSize: 14.0, fontColor: darkGrayColor)),
                      const SizedBox(height: 20,),
                      CustomFormField(
                        hintText: "Straight Truck",
                        controller: controller.experienceTruckController,
                        focusNode: controller.focusExperienceTruck,
                        focusNext: controller.focusExperienceTractor,
                      ),
                      CustomFormField(
                        hintText: "Tractor and Semi-Trailer",
                        controller: controller.experienceTractorController,
                        focusNode: controller.focusExperienceTractor,
                        focusNext: controller.focusExperienceTwoTrailer,
                      ),
                      CustomFormField(
                        hintText: "Tractor - Two Trailers",
                        controller: controller.experienceTwoTrailerController,
                        focusNode: controller.focusExperienceTwoTrailer,
                        focusNext: controller.focusExperienceOther,
                      ),
                      CustomFormField(
                        hintText: "Other",
                        controller: controller.experienceOtherController,
                        focusNode: controller.focusExperienceOther,
                      ),
                      const SizedBox(height: 40,),
                      toggleRow(AppStrings.agreement),
                      toggleRow(AppStrings.communication),
                      CustomButton.normalButton(title: "Next",onTap: (){
                        controller.isPersonalInfo.value = true;
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
