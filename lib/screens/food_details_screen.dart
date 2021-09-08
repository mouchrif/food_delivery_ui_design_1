import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_design_1/constants.dart';
import 'package:food_delivery_app_design_1/models/food.dart';
import 'package:food_delivery_app_design_1/widgets/fade_in_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  static String routeName = "food-details";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments as int?;
    final double percent = 0.25;
    final int animDuration = 700;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: size.height * (1 - percent) -
                  size.height * 0.35 / 2 -
                  kDefaultPadding,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                  horizontal: kDefaultPadding,
                ),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInAnimation(
                      animationDuration: animDuration,
                      aniOffsetX: 0.0,
                      aniOffsetY: -0.35,
                      child: Text(
                        "${Food.foods[args!].name}",
                        style: GoogleFonts.montserrat(
                          color: kBlueDarkColor,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: FadeInAnimation(
                            delay: 100,
                            animationDuration: animDuration,
                            aniOffsetX: 0.0,
                            aniOffsetY: -0.35,
                            child: Text(
                              "\$ ${Food.foods[args].prices[1]}",
                              style: GoogleFonts.montserrat(
                                  color: kOrangeDarkColor,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              FadeInAnimation(
                                delay: 100,
                                animationDuration: animDuration,
                                aniOffsetX: 0.0,
                                aniOffsetY: -0.35,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kBlueLightColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: kBlackColor,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "1",
                                        style: GoogleFonts.montserrat(
                                          color: kBlueDarkColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: kBlackColor,
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: size.height * 0.18,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: kDefaultPadding / 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeInAnimation(
                                    delay: 200,
                                    animationDuration: animDuration,
                                    aniOffsetX: 0.0,
                                    aniOffsetY: -0.35,
                                    child: Text(
                                      "Weight",
                                      style: GoogleFonts.montserrat(
                                        color: kBlueDarkColor.withOpacity(0.8),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FadeInAnimation(
                                    delay: 200,
                                    animationDuration: animDuration,
                                    aniOffsetX: 0.0,
                                    aniOffsetY: -0.35,
                                    child: Text(
                                      "${Food.foods[args].weight}g",
                                      style: GoogleFonts.montserrat(
                                        color: kBlueDarkColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  FadeInAnimation(
                                    delay: 300,
                                    animationDuration: animDuration,
                                    aniOffsetX: 0.0,
                                    aniOffsetY: -0.35,
                                    child: Text(
                                      "Calories",
                                      style: GoogleFonts.montserrat(
                                        color: kBlueDarkColor.withOpacity(0.8),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FadeInAnimation(
                                    delay: 300,
                                    animationDuration: animDuration,
                                    aniOffsetX: 0.0,
                                    aniOffsetY: -0.35,
                                    child: Text(
                                      "${Food.foods[args].calorie} ccal",
                                      style: GoogleFonts.montserrat(
                                        color: kBlueDarkColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...List.generate(
                                  Food.ingredients.length,
                                  (index) => FadeInAnimation(
                                    delay: 400,
                                    animationDuration: animDuration,
                                    aniOffsetX: 0.0,
                                    aniOffsetY: -0.35,
                                    child: Column(
                                      children: [
                                        Text(
                                          "${Food.ingredients[index]}",
                                          style: GoogleFonts.montserrat(
                                            color:
                                                kBlueDarkColor.withOpacity(0.5),
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    FadeInAnimation(
                      delay: 500,
                      animationDuration: animDuration,
                      aniOffsetX: 0.0,
                      aniOffsetY: -0.35,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                        ),
                        decoration: BoxDecoration(
                          color: kGreenDarkColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: FadeInAnimation(
                            delay: 600,
                            animationDuration: animDuration,
                            aniOffsetX: 0.0,
                            aniOffsetY: -0.35,
                            child: Text(
                              "Add to Cart",
                              style: GoogleFonts.montserrat(
                                  color: kWhiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: size.height * percent,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 2, horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                  color: kBlueLightColor.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(39),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: SvgPicture.asset(
                            "assets/images/left-arrow.svg",
                            color: kBlueDarkColor,
                            height: 20,
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/images/shopping-bag.svg",
                          color: kBlueDarkColor,
                          height: 20,
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * percent -
                  (size.height * 0.35 / 2 - kDefaultPadding),
              left: -kDefaultPadding * 2,
              right: 0,
              height: size.height * 0.35 - kDefaultPadding,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.3),
                      blurRadius: 32,
                      spreadRadius: 4,
                      offset: Offset(kDefaultPadding, kDefaultPadding / 3),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * percent -
                  (size.height * 0.35 / 2 - kDefaultPadding),
              left: 0,
              right: 0,
              height: size.height * 0.35 - kDefaultPadding,
              child: Hero(
                tag: "${Food.foods[args].assetName}",
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        Food.foods[args].assetName,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
