import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rest_api/facebook_signin/facebook_sign_in.dart';
import 'package:rest_api/googleSignIn/google_sign_up.dart';
import 'package:rest_api/googleSignIn/google_sign_up_third/signin_with_google.dart';
import 'package:rest_api/screens/landingScreen/landing_screen.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);


Future<void> main() async {
  if (kIsWeb) {
    // initialiaze the facebook javascript SDK

    await FacebookAuth.instance.webInitialize(
      appId: "1329834907365798",
      cookie: true,
      xfbml: true,
      version: "v13.0",
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
            home: FaceBookSignIn()
        );
      },
    );
  }
}
