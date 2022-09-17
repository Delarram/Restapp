import 'package:flutter/material.dart';
import 'package:rest_api/widget/custom_text.dart';


class LandingScreenLang extends StatelessWidget {
  const LandingScreenLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Center(
                  child: Image.asset(
                      "assets/images/hello.png",
                      fit: BoxFit.fitHeight
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Center(
                  child: CustomText(
                text: "Welcome To The World Of Language App",
                fontSize: 30,
                fontWeight: FontWeight.w500,
                maxLine: 2,
                textAlign: TextAlign.center,
              )),SizedBox(height: 15,),
              Center(
                  child: CustomText(
                    text: "Learning has never been so easy! With Mystery Language yoy will learn to speak your dream language no time ",
                    fontSize: 18,
                    maxLine: 3,
                    color: Colors.grey,
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
