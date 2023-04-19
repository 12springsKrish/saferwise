import 'package:get/get.dart';
import 'package:saferwise_mobile/auth_module/controller/authorization_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/employment_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/fmcsr_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/license_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/login_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/personal_information_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/signup_controller.dart';
import 'package:saferwise_mobile/auth_module/controller/timeLine_controller.dart';
import 'package:saferwise_mobile/auth_module/view/authorization_view.dart';
import 'package:saferwise_mobile/auth_module/view/employment_view.dart';
import 'package:saferwise_mobile/auth_module/view/fmcsr_view.dart';
import 'package:saferwise_mobile/auth_module/view/license_view.dart';
import 'package:saferwise_mobile/auth_module/view/login_view.dart';
import 'package:saferwise_mobile/auth_module/view/personal_information_view.dart';
import 'package:saferwise_mobile/auth_module/view/signup_view.dart';
import 'package:saferwise_mobile/auth_module/view/splash_screen_view.dart';
import 'package:saferwise_mobile/auth_module/view/timeline_view.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.loginView,
      page: () => LoginView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LoginController());
      }),
    ),
    GetPage(
      name: Routes.signUpView,
      page: () => SignUpView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SignUpController());
      }),
    ),
    GetPage(
      name: Routes.personalInformationView,
      page: () => PersonalInformationView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => TimeLineController());
      }),
    ),
    GetPage(
      name: Routes.licenseView,
      page: () => LicenseView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => TimeLineController());
      }),
    ),
    GetPage(
      name: Routes.employmentView,
      page: () => EmploymentView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => TimeLineController());
      }),
    ),
    GetPage(
      name: Routes.fmcsrView,
      page: () => FmcsrView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => TimeLineController());
      }),
    ),
    GetPage(
      name: Routes.authorizationView,
      page: () => AuthorizationView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => TimeLineController());
      }),
    ),
    GetPage(
      name: Routes.splashScreenView,
      page: () => Splash(),
    ),
    GetPage(
      name: Routes.timeLineView,
      page: () => TimeLineView(),
      binding: BindingsBuilder((){
        Get.lazyPut(() => TimeLineController());
      })
    ),
  ];
}
