import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rest_api/widget/custom_button.dart';
import 'package:rest_api/widget/custom_text.dart';
import 'package:rest_api/widget/custom_textfield.dart';

import '../welcomeScreen/forclipper/language_welcome_screen.dart';


class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Mystery",
            fontSize: 26,
            color:Colors.grey,
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
            obsureText: true,
            suffixIcon: Icon(
              FontAwesomeIcons.ellipsis,
              color: Color(0xff0D0B4A),
              size: 20,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomText(
              text: "Forgot your password?",
              fontSize: 14,
              color:Colors.grey,
              //Color(0xFF08061F),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CustomButton(
            margin:  EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            width: double.infinity,
            text: "Login",
            height: 45,
            nextPage: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>LanguageWelcomeScreen()));
            },
          )
        ],
      ),
    );
  }
}
