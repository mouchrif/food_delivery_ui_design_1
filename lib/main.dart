import 'package:flutter/material.dart';
import 'package:food_delivery_app_design_1/constants.dart';
import 'package:food_delivery_app_design_1/screens/food_details_screen.dart';
import 'package:food_delivery_app_design_1/screens/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery food app',
      theme: ThemeData(
        primaryColor: kBlueDarkColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kGreyColor),
          bodyText2: TextStyle(color: kGreyColor),
        ),
      ),
      home: MainScreen(),
      initialRoute: "/",
      routes: {
        FoodDetailsScreen.routeName: (ctx) => FoodDetailsScreen(),
      },
    );
  }
}

