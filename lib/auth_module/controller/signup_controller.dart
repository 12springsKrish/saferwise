
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class SignUpController extends GetxController {
  final focusMobile = FocusNode(),
      fNameFocusNode = FocusNode();

  final GlobalKey<CustomTextFieldState> emailState =
  GlobalKey<CustomTextFieldState>(),
      fNameState = GlobalKey<CustomTextFieldState>();
  TextEditingController emailController = TextEditingController(),
      fNameController = TextEditingController();


  final focusPassword = FocusNode();
  final GlobalKey<CustomTextFieldState> passwordState =
  GlobalKey<CustomTextFieldState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController reTypePasswordController = TextEditingController();
}
