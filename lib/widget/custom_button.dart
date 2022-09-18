
import 'package:flutter/material.dart';
import 'package:rest_api/resources/color_constant.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final dynamic margin;
  final VoidCallback nextPage;
  const CustomButton({Key? key, required this.width, required this.text, required this.height, this.margin, required this.nextPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  // Color(0xff0D0B4A),
                  // cPrimary,
                  // cPrimary,
                  //Color(0xff0D0B4A),
                  // Color(0xFF1E4680),
                  Color(0xff31347A),
                  Color(0xff31347A), Color(0xff31347A), Color(0xff31347A),
                  // Color(0xFF1E4680),
                  // Color(0xFF1E4680),
                  // Color(0xFF1E4660),


                 //  cPrimarySecond,
                 //  cPrimary, cPrimary,
                  // Color(0xff0D0B4A),
                  // Color(0xff0D0B4A),
                ])),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
