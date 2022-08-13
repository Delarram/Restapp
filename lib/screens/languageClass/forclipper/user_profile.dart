import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Positioned buildTopText(Size size) {
  return Positioned(
    top: size.height * 0.1,
    left: 0,
    right: 0,
    child: Card(
      child: Container(
        height: 130,
        width: 130,
      ),
    ),
  );
}