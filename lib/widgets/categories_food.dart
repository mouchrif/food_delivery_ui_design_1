import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_design_1/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class CategoriesFood extends StatelessWidget {
  final Size size;
  const CategoriesFood({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding, 
      ),
      padding: const EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding * 1.2,
        0.0,
        kDefaultPadding * 1.2,
      ),
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: kBlueLightColor.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(39),
          bottomLeft: Radius.circular(39),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: Food.foodCategories.length,
        itemBuilder: (context, index) => Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: index == 0 ? kGreenDarkColor : kBgColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      Food.foodCategories[index]['icon'] ?? "error icon",
                      height: 30,
                      color: index == 0 ? kWhiteColor : kBlueDarkColor,
                    ),
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  Food.foodCategories[index]['name'] ?? "no name",
                  style: GoogleFonts.montserrat(
                    color: index == 0
                        ? kBlueDarkColor
                        : kBlueDarkColor.withOpacity(0.3),
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
