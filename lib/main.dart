import 'package:flutter/material.dart';
import 'package:rest_api/screens/languageClass/forclipper/language_welcome_screen.dart';
import 'package:rest_api/screens/loginscreen/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LanguageWelcomeScreen(),
    );
  }
}
