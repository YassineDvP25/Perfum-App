
import 'package:flutter/material.dart';

class LeftOrganicClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width * 0.55, 0);

    path.quadraticBezierTo(
      size.width,
      size.height * 0.25,
      size.width * 0.55,
      size.height * 0.5,
    );

    path.quadraticBezierTo(
      0,
      size.height * 0.75,
      size.width * 0.55,
      size.height,
    );

    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
