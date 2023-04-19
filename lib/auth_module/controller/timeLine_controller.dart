import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/helper/custom_widgets/custom_textfields.dart';

class TimeLineController extends GetxController{

  //Personal Info
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


  //Licenses
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

  //Employment
  final focusCompanyName = FocusNode();
  final GlobalKey<CustomTextFieldState> companyNameState = GlobalKey<CustomTextFieldState>();
  TextEditingController companyNameController = TextEditingController();

  final focusStartDate = FocusNode();
  final GlobalKey<CustomTextFieldState> startDateState = GlobalKey<CustomTextFieldState>();
  TextEditingController startDateController = TextEditingController();

  final focusEndDate = FocusNode();
  final GlobalKey<CustomTextFieldState> endDateState = GlobalKey<CustomTextFieldState>();
  TextEditingController endDateController = TextEditingController();

  final focusAddressEmployment = FocusNode();
  final GlobalKey<CustomTextFieldState> addressEmploymentState = GlobalKey<CustomTextFieldState>();
  TextEditingController addressEmploymentController = TextEditingController();

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

  final focusMobileEmployment = FocusNode();
  final GlobalKey<CustomTextFieldState> mobileEmploymentState = GlobalKey<CustomTextFieldState>();
  TextEditingController mobileEmploymentController = TextEditingController();

  final focusFax = FocusNode();
  final GlobalKey<CustomTextFieldState> faxState = GlobalKey<CustomTextFieldState>();
  TextEditingController faxController = TextEditingController();

  final focusPositionEmployment = FocusNode();
  final GlobalKey<CustomTextFieldState> positionEmploymentState = GlobalKey<CustomTextFieldState>();
  TextEditingController positionEmploymentController = TextEditingController();

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



  //FMCSR
  final focusfNameFmcsr = FocusNode();
  final GlobalKey<CustomTextFieldState> fNameFmcsrState = GlobalKey<CustomTextFieldState>();
  TextEditingController fNameFmcsrController = TextEditingController();

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


  //Authorization
  final focusSignedAuth = FocusNode();
  final GlobalKey<CustomTextFieldState> signedAuthState = GlobalKey<CustomTextFieldState>();
  TextEditingController signedAuthController = TextEditingController();

  var isEmployment = false.obs;
  var isPersonalInfo = false.obs;
  var isLicenses = false.obs;
  var isAuthorization = false.obs;
  var isFmcsr = false.obs;
}