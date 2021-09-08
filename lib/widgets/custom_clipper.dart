import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double radius = 40;
    final Path path = Path();
    path.quadraticBezierTo(0, radius, radius, radius);
    path.lineTo(size.width - radius, radius);
    path.quadraticBezierTo(
        size.width, radius, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
