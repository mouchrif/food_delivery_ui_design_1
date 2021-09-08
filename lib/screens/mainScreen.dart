import 'package:flutter/material.dart';
import 'package:food_delivery_app_design_1/widgets/bottom_navbar.dart';
import 'package:food_delivery_app_design_1/widgets/custom_clipper.dart';
import 'package:food_delivery_app_design_1/widgets/main_home.dart';

import '../constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: size.height*0.9,
              child: MainHome(size: size),
            ),
            Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: size.height*(1-0.9) + 40,
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: CustomBottomNavBar(),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
