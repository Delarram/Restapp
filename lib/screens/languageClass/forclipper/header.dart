import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class HeaderClipper extends CustomClipper<Path> {
  ///The value is - 1 ~ 1.0
  double moveFlag = 0;

  HeaderClipper(this.moveFlag);

  @override
  Path getClip(Size size) {
    //Create Path
    Path path = Path();
    //Move to point P0, which is also the starting point of the curve
    path.lineTo(0, size.height * 0.5);
    //Calculate the coordinates of control point P1
    double xCenter = size.width * 0.4+
        (size.width * 0.6 + 1) * sin(moveFlag * pi);
    double yCenter = size.height * 0.8 + 20 * cos(moveFlag*pi);
    //Construction of second order Bessel curve
    path.quadraticBezierTo(xCenter, yCenter, size.width, size.height * 0.5);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    //Refresh
    return true;
  }
}