import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_design_1/models/food.dart';

import '../constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlueDarkColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              Food.tabIcons.length, (index) => Container(
                width: 25,
                height: 25,
                child: SvgPicture.asset(
                  Food.tabIcons[index],
                  color: index == 1 ? kGreenDarkColor : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}