import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class AuthorizationController extends GetxController{

  final focusSigned = FocusNode();
  final GlobalKey<CustomTextFieldState> signedState = GlobalKey<CustomTextFieldState>();
  TextEditingController signedController = TextEditingController();
}