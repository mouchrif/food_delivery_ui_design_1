import 'package:flutter/material.dart';
import 'package:food_delivery_app_design_1/constants.dart';
import 'package:food_delivery_app_design_1/models/food.dart';
import 'package:food_delivery_app_design_1/screens/food_details_screen.dart';
import 'package:food_delivery_app_design_1/widgets/fade_in_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int animDuration = 700;
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: Food.foods.length,
      itemBuilder: (context, index) => Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(FoodDetailsScreen.routeName, arguments: index);
            },
            child: FadeInAnimation(
              animationDuration: animDuration,
              aniOffsetX: 0.0,
              aniOffsetY: -0.35,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: FadeInAnimation(
                        delay: 100,
                        animationDuration: animDuration,
                        aniOffsetX: 0.0,
                        aniOffsetY: -0.35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Hero(
                            tag: "${Food.foods[index].assetName}",
                            child: Image.asset(
                              Food.foods[index].assetName,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInAnimation(
                            delay: 200,
                            animationDuration: animDuration,
                            aniOffsetX: 0.0,
                            aniOffsetY: -0.35,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 6),
                              decoration: BoxDecoration(
                                color: Food.foods[index].tag == "Sale"
                                    ? kOrangeDarkColor.withOpacity(0.2)
                                    : kGreenDarkColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: FadeInAnimation(
                                delay: 300,
                                animationDuration: animDuration,
                                aniOffsetX: 0.0,
                                aniOffsetY: -0.35,
                                child: Text(
                                  Food.foods[index].tag,
                                  style: GoogleFonts.montserrat(
                                      color: Food.foods[index].tag == "Sale"
                                          ? kOrangeDarkColor
                                          : kGreenDarkColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          FadeInAnimation(
                            delay: 400,
                            animationDuration: animDuration,
                            aniOffsetX: 0.0,
                            aniOffsetY: -0.35,
                            child: Text(
                              Food.foods[index].name,
                              style: GoogleFonts.montserrat(
                                  color: kBlueDarkColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              FadeInAnimation(
                                delay: 500,
                                animationDuration: animDuration,
                                aniOffsetX: 0.0,
                                aniOffsetY: -0.35,
                                child: Text(
                                  "\$ ${Food.foods[index].prices[1]}",
                                  style: GoogleFonts.montserrat(
                                      color: kBlueDarkColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              FadeInAnimation(
                                delay: 600,
                                animationDuration: animDuration,
                                aniOffsetX: 0.0,
                                aniOffsetY: -0.35,
                                child: Text(
                                  " \$ ${Food.foods[index].prices[0]}",
                                  style: GoogleFonts.montserrat(
                                      color: kBlueDarkColor.withOpacity(0.2),
                                      fontSize: 14.0),
                                ),
                              ),
                              SizedBox(width: 10),
                              FadeInAnimation(
                                delay: 700,
                                animationDuration: animDuration,
                                aniOffsetX: 0.0,
                                aniOffsetY: -0.35,
                                child: Text(
                                  "${Food.foods[index].weight}g",
                                  style: GoogleFonts.montserrat(
                                      color: kBlueDarkColor.withOpacity(0.2),
                                      fontSize: 14.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
