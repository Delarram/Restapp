import 'package:flutter/material.dart';
import 'package:rest_api/screens/languageClass/forclipper/position_top.dart';
import 'package:rest_api/screens/languageClass/forclipper/user_profile.dart';
import 'package:rest_api/widget/bg_clippath.dart';

import 'header.dart';

class LanguageWelcomeScreen extends StatefulWidget {
  const LanguageWelcomeScreen({Key? key}) : super(key: key);

  @override
  _LanguageWelcomeScreenState createState() => _LanguageWelcomeScreenState();
}

class _LanguageWelcomeScreenState extends State with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      //Default initial value
      value: 0.0,
      //execution time
      duration: Duration(seconds: 10),
      //Value range
      upperBound: 1,
      lowerBound: -1,
      vsync: this,
    );
    //Repeat execution
    _animationController.repeat();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
        child: Stack(
          children: <Widget>[
            //Part I water ripple background
            buildFirstAnimation(size),
            //The text at the top of the second part
            buildTopText(size),
            //The button at the bottom of the third part
            buildProfile(size),
            ClipPath(
              clipper: BgClipPath(),
            )
          ],
        ),
      ),
    );
  }

  buildFirstAnimation(Size size) {
    return AnimatedBuilder(animation: _animationController, builder: (context,child){
      return ClipPath(
        clipper: HeaderClipper(_animationController.value),
        child: Container(
          height: size.height * 0.5,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors:[Color(0xFF0D0B4A), Color(0xFF08061F)]
              )
          ),
        ),
      );
    });
  }

}
