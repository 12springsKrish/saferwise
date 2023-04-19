import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class EmploymentController extends GetxController{

  final focusCompanyName = FocusNode();
  final GlobalKey<CustomTextFieldState> companyNameState = GlobalKey<CustomTextFieldState>();
  TextEditingController companyNameController = TextEditingController();

  final focusStartDate = FocusNode();
  final GlobalKey<CustomTextFieldState> startDateState = GlobalKey<CustomTextFieldState>();
  TextEditingController startDateController = TextEditingController();

  final focusEndDate = FocusNode();
  final GlobalKey<CustomTextFieldState> endDateState = GlobalKey<CustomTextFieldState>();
  TextEditingController endDateController = TextEditingController();

  final focusAddress = FocusNode();
  final GlobalKey<CustomTextFieldState> addressState = GlobalKey<CustomTextFieldState>();
  TextEditingController addressController = TextEditingController();

  final focusCity = FocusNode();
  final GlobalKey<CustomTextFieldState> cityState = GlobalKey<CustomTextFieldState>();
  TextEditingController cityController = TextEditingController();

  final focusProvince = FocusNode();
  final GlobalKey<CustomTextFieldState> provinceState = GlobalKey<CustomTextFieldState>();
  TextEditingController provinceController = TextEditingController();

  final focusZipCode = FocusNode();
  final GlobalKey<CustomTextFieldState> zipCodeState = GlobalKey<CustomTextFieldState>();
  TextEditingController zipCodeController = TextEditingController();

  final focusCountry = FocusNode();
  final GlobalKey<CustomTextFieldState> countryState = GlobalKey<CustomTextFieldState>();
  TextEditingController countryController = TextEditingController();

  final focusMobile = FocusNode();
  final GlobalKey<CustomTextFieldState> mobileState = GlobalKey<CustomTextFieldState>();
  TextEditingController mobileController = TextEditingController();

  final focusFax = FocusNode();
  final GlobalKey<CustomTextFieldState> faxState = GlobalKey<CustomTextFieldState>();
  TextEditingController faxController = TextEditingController();

  final focusPosition = FocusNode();
  final GlobalKey<CustomTextFieldState> positionState = GlobalKey<CustomTextFieldState>();
  TextEditingController positionController = TextEditingController();

  final focusReason = FocusNode();
  final GlobalKey<CustomTextFieldState> reasonState = GlobalKey<CustomTextFieldState>();
  TextEditingController reasonController = TextEditingController();

  final focusAreas = FocusNode();
  final GlobalKey<CustomTextFieldState> areasState = GlobalKey<CustomTextFieldState>();
  TextEditingController areasController = TextEditingController();

  final focusMiles = FocusNode();
  final GlobalKey<CustomTextFieldState> milesState = GlobalKey<CustomTextFieldState>();
  TextEditingController milesController = TextEditingController();

  final focusPay = FocusNode();
  final GlobalKey<CustomTextFieldState> payState = GlobalKey<CustomTextFieldState>();
  TextEditingController payController = TextEditingController();

  final focusTruck = FocusNode();
  final GlobalKey<CustomTextFieldState> truckState = GlobalKey<CustomTextFieldState>();
  TextEditingController truckController = TextEditingController();

  final focusTrailer = FocusNode();
  final GlobalKey<CustomTextFieldState> trailerState = GlobalKey<CustomTextFieldState>();
  TextEditingController trailerController = TextEditingController();

  final focusTrailerLength = FocusNode();
  final GlobalKey<CustomTextFieldState> trailerLengthState = GlobalKey<CustomTextFieldState>();
  TextEditingController trailerLengthController = TextEditingController();
}