import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/login_controller.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_button.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';

class LoginView extends GetWidget<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.topRight,
            child: Text(
              "SIGN IN",
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
                padding: const EdgeInsets.only(top: 127),
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
                  Text("Continue to sign in!",
                      style: CustomTextStyles.semiBold(
                          fontSize: 20.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    label: "Email",
                    hintText: "Enter your email here",
                    controller: controller.emailController,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                    validateTypes: ValidateTypes.email,
                    focusNext: controller.focusPassword,
                    focusNode: controller.focusMobile,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    label: "Password",
                    hintText: "Enter your password here",
                    controller: controller.passwordController,
                    textInputType: TextInputType.visiblePassword,
                    validateTypes: ValidateTypes.password,
                    focusNode: controller.focusPassword,
                    focusNext: controller.focusPassword,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password?",
                      style: CustomTextStyles.bold(
                          fontSize: 16.0,
                          fontColor: blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: blackColor,
                          activeColor: grayColor,
                          value: true,
                          onChanged: (val) {}),
                      Text(
                        "Remember me and keep me logged in ",
                        style: CustomTextStyles.normal(
                            fontSize: 15.0,
                            fontColor: blackColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton.normalButton(
                      title: "Sign in",
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: CustomTextStyles.normal(
                            isUnderLine: true,
                            fontSize: 16.0,
                            fontColor: grayBg,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      InkWell(
                        onTap: (){
                          Get.toNamed(Routes.signUpView);
                        },
                        child: Text(
                          "Sign Up",
                          style: CustomTextStyles.bold(
                              fontSize: 16.0,
                              fontColor: blackColor,
                              fontWeight: FontWeight.w800),
                        ),
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
