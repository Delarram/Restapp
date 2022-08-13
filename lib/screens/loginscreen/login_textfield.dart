import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rest_api/widget/custom_text.dart';
import 'package:rest_api/widget/custom_textfield.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Mystery",
            fontSize: 26,
            color: Color(0xFF08061F),
            fontWeight: FontWeight.bold,
          ),
          CustomTextField(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            height: 50,
            width: double.infinity,
            labelText: "Username",
            obsureText: false,
            suffixIcon: Icon(
              FontAwesomeIcons.eyeSlash,
              color: Color(0xff0D0B4A),
              size: 20,
            ),
          ),
          CustomTextField(
            margin: EdgeInsets.only(bottom: 10),
            height: 50,
            width: double.infinity,
            labelText: "Password",
            obsureText: false,
            suffixIcon: Icon(
              FontAwesomeIcons.eyeSlash,
              color: Color(0xff0D0B4A),
              size: 20,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomText(
              text: "Forgot your password?",
              fontSize: 14,
              color: Color(0xFF08061F),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
