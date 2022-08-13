

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Positioned buildProfile(Size size) {
  return Positioned(
    top: size.height * 0.23,
    left:130,
    right: 130,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Container(
        height: 110,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey[150],
          image: DecorationImage(
            image: AssetImage("assets/images/profile.png"),fit: BoxFit.contain
          )
        ),
      ),
    ),
  );
}