import 'package:flutter/material.dart';

Positioned buildTopText(Size size) {
  return Positioned(
    top: size.height * 0.1,
    left: 0,
    right: 0,
    child: Text(
      "Language Center",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}