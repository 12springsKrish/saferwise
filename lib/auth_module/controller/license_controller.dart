import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class LicenseController extends GetxController{

  final focusLicenseNo = FocusNode();
  final GlobalKey<CustomTextFieldState> licenseNoState = GlobalKey<CustomTextFieldState>();
  TextEditingController licenseNoController = TextEditingController();

  final focusLicenseExpiry = FocusNode();
  final GlobalKey<CustomTextFieldState> licenseExpiryState = GlobalKey<CustomTextFieldState>();
  TextEditingController licenseExpiryController = TextEditingController();

  final focusPhysicalExpiry = FocusNode();
  final GlobalKey<CustomTextFieldState> physicalExpiryState = GlobalKey<CustomTextFieldState>();
  TextEditingController physicalExpiryController = TextEditingController();

  final focusEndorsements = FocusNode();
  final GlobalKey<CustomTextFieldState> endorsementsState = GlobalKey<CustomTextFieldState>();
  TextEditingController endorsementsController = TextEditingController();


}