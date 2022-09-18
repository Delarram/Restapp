import 'package:flutter/material.dart';
import 'package:rest_api/resources/color_constant.dart';
import 'package:rest_api/screens/loginscreen/login_textfield.dart';

import '../welcomeScreen/forclipper/header.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State with SingleTickerProviderStateMixin{
  // late AnimationController _animationController;

  // @override
  // void initState() {
  //   super.initState();
  //   // _animationController = AnimationController(
  //   //   //Default initial value
  //   //   value: 0.0,
  //   //   //execution time
  //   //   duration: Duration(seconds: 10),
  //   //   //Value range
  //   //   upperBound: 1,
  //   //   lowerBound: -1,
  //   //   vsync: this,
  //   // );
  //   // //Repeat execution
  //   // _animationController.repeat();
  // }
  // @override
  // void dispose() {
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      //Allow keyboard pop-up layout file to move up
      resizeToAvoidBottomInset: true,
      body: Container(
        //fill
        width: size.width,
        height: size.height,
        //Cascade
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                  child: LoginTextField()),
            ],
          ),
        )
      ),
    );
  }




  // buildFirstAnimationForLogin(Size size) {
  //   return AnimatedBuilder(animation: _animationController, builder: (context,child){
  //     return ClipPath(
  //       clipper: HeaderClipper(_animationController.value),
  //       child: Container(
  //         height: size.height * 0.4,
  //         decoration: BoxDecoration(
  //             gradient: LinearGradient(
  //                 begin: Alignment.bottomLeft,
  //                 end: Alignment.topRight,
  //                 colors:[
  //                   Color(0xffF2BE01),Color(0xffF2BE01)
  //                   // Color(0xFF0D0B4A), Color(0xFF08061F)
  //                 ]
  //             )
  //         ),
  //       ),
  //     );
  //   });
  // }

}
