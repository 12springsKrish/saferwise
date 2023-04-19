import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/helper/custom_widgets/custom_textfields.dart';

enum authMode {Login,Signup}

class LoginController extends GetxController{

  final focusMobile = FocusNode();
  final GlobalKey<CustomTextFieldState> mobileState = GlobalKey<CustomTextFieldState>();
  TextEditingController emailController = TextEditingController();

  final focusPassword = FocusNode();
  final GlobalKey<CustomTextFieldState> passwordState =
  GlobalKey<CustomTextFieldState>();
  TextEditingController passwordController = TextEditingController();

  var isButtonPressed = false.obs;
  var isValidMobileEmail = false.obs;
  var isButtonLoaderEnabled = false.obs;
  var showPassword = false.obs;
  var rememberPassword = false.obs;

}