import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_design_1/models/food.dart';
import 'package:food_delivery_app_design_1/widgets/categories_food.dart';
import 'package:food_delivery_app_design_1/widgets/list_of_food.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MainHome extends StatelessWidget {
  final Size size;
  const MainHome({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: kDefaultPadding * 2,
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding/2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                SvgPicture.asset(
                  "assets/images/shopping-bag.svg",
                  color: kBlueDarkColor,
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our menu",
                  style: GoogleFonts.montserrat(
                    color: kBlueDarkColor,
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                        fontSize: 16.0, fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "in the restauront on ",
                        style: TextStyle(
                          color: kGreyColor,
                        ),
                      ),
                      TextSpan(
                        text: "Nevsky Prospekt 42",
                        style: TextStyle(
                          color: kGreenDarkColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CategoriesFood(size: size),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
            ),
            child: Text(
              "${Food.foods.length} items",
              style: GoogleFonts.montserrat(
                  color: kBlueDarkColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          // SizedBox(height: 20),
          Expanded(
            child: FoodItems(),
          ),
        ],
      ),
    );
  }
}
