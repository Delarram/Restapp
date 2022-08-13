import 'package:flutter/material.dart';
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
            suffix:suffixIcon,
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            )
        ),
        obscureText: obsureText,
      ),
    );
  }
}
