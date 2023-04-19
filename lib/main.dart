import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/binding.dart';
import 'package:saferwise_mobile/core/helper/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splashScreenView,
      getPages: Pages.pages,
    );
  }
}
