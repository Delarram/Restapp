import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rest_api/cupertino_picker/cupertino_picker.dart';
import 'package:rest_api/facebook_signin/facebook_sign_in.dart';
import 'package:rest_api/flutterhtml/flutter_html.dart';
import 'package:rest_api/googleSignIn/google_sign_in_second.dart';
import 'package:rest_api/googleSignIn/google_sign_up.dart';
import 'package:rest_api/googleSignIn/google_sign_up_third/signin_with_google.dart';
import 'package:rest_api/screens/landingScreen/landing_screen.dart';



Future<void> main() async {
     WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // initialiaze the facebook javascript SDK

    await FacebookAuth.instance.webInitialize(
      appId: "640092027552463",
      cookie: true,
      xfbml: true,
      version: "v13.0",
    );
  }
  runApp(MyApp());
}
String prettyPrint(Map json) {
  JsonEncoder encoder = new JsonEncoder.withIndent(' ');
  String pretty = encoder.convert(json);
  return pretty;
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner:false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:IosDialog()
        );
      },
    );
  }
}
