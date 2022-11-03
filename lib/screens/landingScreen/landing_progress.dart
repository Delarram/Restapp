import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/screens/landingScreen/landing_screen.dart';



class LandingProgress extends StatefulWidget {
  const LandingProgress({Key? key}) : super(key: key);

  @override
  State<LandingProgress> createState() => _LandingProgressState();
}

class _LandingProgressState extends State<LandingProgress> {

  double? value;

  @override
  void initState() {
    value = 0;
    setState(() {

    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/helloone.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/3,),
              Image.asset("assets/images/logo.png"),
              Spacer(),
              Container(
                width: 100.w,
                margin: EdgeInsets.all(20.r),
                child: LinearProgressIndicator(
                  backgroundColor: const Color(0xFF08061B),
                  color: const Color(0xFFFFFFFF),
                  minHeight: 5,
                  value: value,
                ),
              ),
              SizedBox(height: 40.h,),
            ],
          ),
        ),
      ),
    );
  }

}