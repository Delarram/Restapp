import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rest_api/resources/color_constant.dart';
import 'package:rest_api/widget/custom_button.dart';
import 'package:rest_api/widget/custom_text.dart';
import 'package:rest_api/widget/custom_textfield.dart';

import '../welcomeScreen/forclipper/language_welcome_screen.dart';


class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // RichText(text: TextSpan(
        //   style: TextStyle(fontSize: 30),
        //   children: [
        //     TextSpan(text: "M",style: TextStyle(color: cPrimary)),
        //     TextSpan(text: "ystery",style: TextStyle(color: Colors.grey))
        //   ]
        // )),
        CustomText(
          text: "Mystery",
          fontSize: 26,
          color:Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 15,),
        CustomTextField(
          margin: EdgeInsets.only(bottom: 15,),
          height: 50,
          width: double.infinity,
          labelText: "Username",
          obsureText: false,
          suffixIcon: Icon(
            FontAwesomeIcons.eyeSlash,
            color:Colors.grey,
            //Color(0xff0D0B4A),
            size: 20,
          ),
        ),
        CustomTextField(
          margin: EdgeInsets.only(bottom: 15,),
          height: 50,
          width: double.infinity,
          labelText: "Password",
          obsureText: true,
          suffixIcon: Icon(
            FontAwesomeIcons.ellipsis,
            color: Colors.grey,
           // Color(0xff0D0B4A),
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
          width: 20,height: 15,
        ),
        CustomButton(
          width: double.infinity,
          text: "Login",
          height: 45,
          nextPage: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>LanguageWelcomeScreen()));
          },
        )
      ],
    );
  }
}
