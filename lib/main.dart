import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_api/cupertino_picker/cupertino_picker.dart';
import 'package:rest_api/recentview/course_page.dart';
import 'package:rest_api/videoplayer/video_player_page.dart';


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
            home:VideoPlayerScreen()
        );
      },
    );
  }
}
