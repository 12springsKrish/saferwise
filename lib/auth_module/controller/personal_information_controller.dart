import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class PersonalInformationController extends GetxController{

  final focusfName = FocusNode();
  final GlobalKey<CustomTextFieldState> fNameState = GlobalKey<CustomTextFieldState>();
  TextEditingController fNameController = TextEditingController();

  final focuslName = FocusNode();
  final GlobalKey<CustomTextFieldState> lNameState = GlobalKey<CustomTextFieldState>();
  TextEditingController lNameController = TextEditingController();

  final focusDob = FocusNode();
  final GlobalKey<CustomTextFieldState> dobState = GlobalKey<CustomTextFieldState>();
  TextEditingController dobController = TextEditingController();

  final focusPhone = FocusNode();
  final GlobalKey<CustomTextFieldState> phoneState = GlobalKey<CustomTextFieldState>();
  TextEditingController phoneController = TextEditingController();

  final focusMobile = FocusNode();
  final GlobalKey<CustomTextFieldState> mobileState = GlobalKey<CustomTextFieldState>();
  TextEditingController mobileController = TextEditingController();

  final focusEmail = FocusNode();
  final GlobalKey<CustomTextFieldState> emailState = GlobalKey<CustomTextFieldState>();
  TextEditingController emailController = TextEditingController();

  final focusSsn = FocusNode();
  final GlobalKey<CustomTextFieldState> ssnState = GlobalKey<CustomTextFieldState>();
  TextEditingController ssnController = TextEditingController();

  final focusAddress = FocusNode();
  final GlobalKey<CustomTextFieldState> addressState = GlobalKey<CustomTextFieldState>();
  TextEditingController addressController = TextEditingController();

  final focusPosition = FocusNode();
  final GlobalKey<CustomTextFieldState> positionState = GlobalKey<CustomTextFieldState>();
  TextEditingController positionController = TextEditingController();

  final focusEquipmentType = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentTypeState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentTypeController = TextEditingController();

  final focusEquipmentYear = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentYearState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentYearController = TextEditingController();

  final focusEquipmentMake = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentMakeState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentMakeController = TextEditingController();

  final focusEquipmentModel = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentModelState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentModelController = TextEditingController();

  final focusEquipmentColor = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentColorState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentColorController = TextEditingController();

  final focusEquipmentVin = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentVinState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentVinController = TextEditingController();

  final focusEquipmentWeight = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentWeightState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentWeightController = TextEditingController();

  final focusEquipmentMileage = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentMileageState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentMileageController = TextEditingController();

  final focusEquipmentWheelHeight = FocusNode();
  final GlobalKey<CustomTextFieldState> equipmentWheelHeightState = GlobalKey<CustomTextFieldState>();
  TextEditingController equipmentWheelHeightController = TextEditingController();

  final focusLocation = FocusNode();
  final GlobalKey<CustomTextFieldState> locationState = GlobalKey<CustomTextFieldState>();
  TextEditingController locationController = TextEditingController();

  final focusExperienceTruck = FocusNode();
  final GlobalKey<CustomTextFieldState> experienceTruckState = GlobalKey<CustomTextFieldState>();
  TextEditingController experienceTruckController = TextEditingController();

  final focusExperienceTractor = FocusNode();
  final GlobalKey<CustomTextFieldState> experienceTractorState = GlobalKey<CustomTextFieldState>();
  TextEditingController experienceTractorController = TextEditingController();

  final focusExperienceTwoTrailer = FocusNode();
  final GlobalKey<CustomTextFieldState> experienceTwoTrailerState = GlobalKey<CustomTextFieldState>();
  TextEditingController experienceTwoTrailerController = TextEditingController();

  final focusExperienceOther = FocusNode();
  final GlobalKey<CustomTextFieldState> experienceOtherState = GlobalKey<CustomTextFieldState>();
  TextEditingController experienceOtherController = TextEditingController();

  var isPersonalInfo = false.obs;


}