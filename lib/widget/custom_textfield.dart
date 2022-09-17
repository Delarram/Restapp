import 'package:flutter/material.dart';
import 'package:rest_api/resources/color_constant.dart';
class CustomTextField extends StatelessWidget {
  final double height;
  final double width;
  final String labelText;
  final Color? color;
  final Icon? suffixIcon;
  final bool obsureText;
  final dynamic margin;
  const CustomTextField(
      {Key? key,
        required this.height,
        required this.width,
        required this.labelText,
        this.suffixIcon,
        this.color, required this.obsureText, this.margin,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:margin,

      height: height,
      color: color,
      child:  TextField(
        decoration: InputDecoration(
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(7.0),
            ),
            suffix:suffixIcon,
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7)),
            )
        ),
        obscureText: obsureText,
      ),
    );
  }
}
