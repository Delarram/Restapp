

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rest_api/screens/welcomeScreen/forclipper/position_top.dart';
import 'package:rest_api/widget/bg_clippath.dart';

import 'header.dart';

class LanguageWelcomeScreen extends StatefulWidget {
  const LanguageWelcomeScreen({Key? key}) : super(key: key);

  @override
  _LanguageWelcomeScreenState createState() => _LanguageWelcomeScreenState();
}

class _LanguageWelcomeScreenState extends State with SingleTickerProviderStateMixin{
   late AnimationController _animationController;
   String? imagePath;
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

   Positioned buildProfile(Size size) {
     return Positioned(
       top: size.height * 0.23,
       left:140,
       right: 140,
       child: Card(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
         child: Stack(
           clipBehavior: Clip.none,
           children: [
             (imagePath != null)
                 ? CircleAvatar(
               backgroundColor: Colors.grey[150],
               radius: 50,
               foregroundImage: Image.file(File(imagePath!)).image
             )
                 : CircleAvatar(
               backgroundColor: Colors.grey[100],
               radius: 45,
               child: Image.asset(
                 "assets/images/profile.png",
                 fit: BoxFit.contain,
               ), //Text
             ),
             Positioned(
               left: 75,
               bottom: 1.5,
               child: GestureDetector(
                 onTap: () {
                   setState(() {
                     pickMediaUser();
                   });
                 },
                 child: Icon(
                   Icons.camera_alt_sharp,
                   color: const Color(0xffF5C206),
                   size: 20,
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }

   void pickMediaUser() async {
     XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
     if (file != null) {
         imagePath = file.path;
       setState(() {});
     }else {
       const Icon(Icons.error);
     }
   }
}
// Image.file(
// File(imagePath),
// fit: BoxFit.cover,
// ).image,