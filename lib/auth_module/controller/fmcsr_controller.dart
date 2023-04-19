import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class FmcsrController extends GetxController{
  final focusfName = FocusNode();
  final GlobalKey<CustomTextFieldState> fNameState = GlobalKey<CustomTextFieldState>();
  TextEditingController fNameController = TextEditingController();

  final focusIpAdd = FocusNode();
  final GlobalKey<CustomTextFieldState> ipAddState = GlobalKey<CustomTextFieldState>();
  TextEditingController ipAddController = TextEditingController();

  final focusSigDateTime = FocusNode();
  final GlobalKey<CustomTextFieldState> sigDateTimeState = GlobalKey<CustomTextFieldState>();
  TextEditingController sigDateTimeController = TextEditingController();

  final focusSigDate = FocusNode();
  final GlobalKey<CustomTextFieldState> sigDateState = GlobalKey<CustomTextFieldState>();
  TextEditingController sigDateController = TextEditingController();

  final focusSigned = FocusNode();
  final GlobalKey<CustomTextFieldState> signedState = GlobalKey<CustomTextFieldState>();
  TextEditingController signedController = TextEditingController();
}