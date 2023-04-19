import 'package:flutter/material.dart';
import 'dart:async';

import 'package:saferwise_mobile/core/helper/constants.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/resources.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  final PageController _pageController = PageController(initialPage: 0);

  startTime() async {
    var duration = const Duration(milliseconds: 2000);
    return Timer(duration, navigateToPage);
  }

  animateToPage(index) {
    // _pageController.animateToPage(index,
    //     duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  navigateToPage() async {
    Navigator.pushReplacementNamed(context, Routes.loginView);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: grayBg,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Stack(children: [
              Image.asset(SvgResources.transition),
              Image.asset(SvgResources.splashScreen)
            ]),
          ),
        ),
      ),
    );
  }
}
