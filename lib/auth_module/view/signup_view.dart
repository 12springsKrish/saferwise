import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/signup_controller.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';

import '../../core/helper/custom_widgets/custom_button.dart';

class SignUpView extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.topRight,
            child: Text(
              "SIGN UP",
              style: CustomTextStyles.bold(
                  fontSize: 16.0,
                  fontColor: whiteColor,
                  fontWeight: FontWeight.w900),
            )),
        backgroundColor: grayBg,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              SvgResources.bg_login2,
              width: double.infinity,
              height: 210,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(SvgResources.saferwiseLogo),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("SAFERWISE.CORP",
                        style: CustomTextStyles.bold(
                            fontSize: 14.0,
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w900))
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 190,
                ),
                Image.asset(SvgResources.whiteBg2)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 212,
                  ),
                  Text("Welcome back",
                      style: CustomTextStyles.semiBold(
                          fontSize: 20.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w900)),
                  Text("Continue to sign up!",
                      style: CustomTextStyles.semiBold(
                          fontSize: 20.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    label: "Name",
                    hintText: "Enter your name here",
                    controller: controller.fNameController,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    validateTypes: ValidateTypes.name,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    label: "Email",
                    hintText: "Enter your email here",
                    controller: controller.emailController,
                    textInputType: TextInputType.emailAddress,
                    validateTypes: ValidateTypes.email,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    label: "Password",
                    hintText: "Enter your password here",
                    controller: controller.passwordController,
                    textInputType: TextInputType.visiblePassword,
                    validateTypes: ValidateTypes.password,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    label: "Re-type your password",
                    hintText: "Re-type your password",
                    controller: controller.reTypePasswordController,
                    textInputType: TextInputType.visiblePassword,
                    validateTypes: ValidateTypes.password,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: blackColor,
                          activeColor: grayColor,
                          value: true,
                          onChanged: (val) {}),
                      RichText(
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        text: TextSpan(
                          text: "By signing up you agree to our \n",
                          style: CustomTextStyles.semiBold(
                              fontSize: 12.0, fontColor: blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Terms and conditions",
                                style: CustomTextStyles.bold(
                                    fontSize: 12.0, fontColor: blackColor),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
                            TextSpan(
                              text: " and ",
                              style: CustomTextStyles.semiBold(
                                  fontSize: 12.0, fontColor: blackColor),
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: CustomTextStyles.bold(
                                  fontSize: 12.0, fontColor: blackColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomButton.normalButton(
                      title: "Sign Up",
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      onTap: () {
                        Get.toNamed(Routes.timeLineView);
                      }),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: CustomTextStyles.normal(
                            isUnderLine: true,
                            fontSize: 16.0,
                            fontColor: grayColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Sign In",
                        style: CustomTextStyles.bold(
                            fontSize: 16.0,
                            fontColor: blackColor,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
