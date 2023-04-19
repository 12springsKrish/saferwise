import 'dart:async';
/*import 'dart:js';*/

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_timeline.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';

class TimeLineView extends GetWidget<TimeLineController> {
  /*startTime() async {
    var duration = const Duration(milliseconds: 2000);
    return Timer(duration, navigateToPage);
  }

  animateToPage(index) {
    // _pageController.animateToPage(index,
    //     duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  navigateToPage() async {
    if(controller.isPersonalInfo == true){
      Navigator.pushReplacementNamed(context as BuildContext, Routes.licenseView);
    } else if(controller.isLicenses == true){
      Navigator.pushReplacementNamed(context as BuildContext, Routes.licenseView);
    }

  }*/

  timeLineSteps({required stepNo, required step}) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            stepNo,
            style: CustomTextStyles.bold(fontSize: 14.0, fontColor: grayColor),
          ),
          Text(step,
              style: CustomTextStyles.bold(
                  fontSize: 15.0,
                  fontColor: blackColor,
                  fontWeight: FontWeight.w800))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*Image.asset(
            SvgResources.bg_login2,
            width: double.infinity,
            height: 100,
            fit: BoxFit.cover,
          ),*/
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Timeline(
                    lineGap: 1.0,
                    indicatorSize: 50,
                    gutterSpacing: 10,
                    itemGap: 25,
                    strokeWidth: 4,
                    children: [
                      timeLineSteps(
                          stepNo: "Step 1", step: "Personal Information"),
                      timeLineSteps(stepNo: "Step 2", step: "Licenses"),
                      timeLineSteps(
                          stepNo: "Step 3", step: "Employment/Unemployment"),
                      timeLineSteps(stepNo: "Step 4", step: "FMCSR"),
                      timeLineSteps(stepNo: "Step 5", step: "Authorization"),
                    ],
                    indicators: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.personalInformationView);
                        },
                        child: controller.isPersonalInfo == true
                            ? Image.asset(SvgResources.check)
                            : Image.asset(
                                SvgResources.personalInfo,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.licenseView);
                        },
                        child: controller.isPersonalInfo == true &&
                                controller.isLicenses == true
                            ? Image.asset(SvgResources.check)
                            : Image.asset(
                                SvgResources.licenses,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.employmentView);
                        },
                        child: controller.isPersonalInfo == true &&
                                controller.isLicenses == true &&
                                controller.isEmployment == true
                            ? Image.asset(SvgResources.check)
                            : Image.asset(
                                SvgResources.employment,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.fmcsrView);
                        },
                        child: controller.isPersonalInfo == true &&
                                controller.isLicenses == true &&
                                controller.isEmployment == true &&
                                controller.isFmcsr == true
                            ? Image.asset(SvgResources.check)
                            : Image.asset(
                                SvgResources.fmcsr,
                              ),
                      ),
                      InkWell(
                        onTap: () {
                          print("here");
                          Get.toNamed(Routes.authorizationView);
                        },
                        child: controller.isPersonalInfo == true &&
                                controller.isLicenses == true &&
                                controller.isEmployment == true &&
                                controller.isFmcsr == true &&
                                controller.isAuthorization == true
                            ? Image.asset(SvgResources.check)
                            : Image.asset(
                                SvgResources.authorization,
                              ),
                      ),
                    ],
                  ),
                  Expanded(child:  ClipRRect(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(SvgResources.boxes),
                    ),
                  ),)

                ],
              ),
            ),
          ),
          /*  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(SvgResources.boxes)),
              )
            ],
          )*/
        ],
      ),
    );
  }
}
