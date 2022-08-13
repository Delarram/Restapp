import 'package:flutter/cupertino.dart';

class BgClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   final path = Path();
   path.moveTo(0, 0);
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;

  }
  
}