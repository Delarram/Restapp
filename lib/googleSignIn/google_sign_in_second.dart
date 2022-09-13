

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInSecond extends StatefulWidget {
  const GoogleSignInSecond({Key? key}) : super(key: key);

  @override
  State<GoogleSignInSecond> createState() => _GoogleSignInSecondState();
}

class _GoogleSignInSecondState extends State<GoogleSignInSecond> {
  bool _isLoggedIn = false;
  late GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _isLoggedIn? Column(
            children: [
              Image.network(_userObj.photoUrl.toString()),
              Text(_userObj.displayName.toString()),
              Text(_userObj.email),
              TextButton(
                  onPressed: () {
                    _googleSignIn.signOut().then((value) {
                      setState(() {
                        _isLoggedIn = false;
                      });
                    }).catchError((e) {});
                  },
                  child: Text("Logout"))
            ],
          ):Center(child: ElevatedButton(
            onPressed: () {
              _googleSignIn.signIn().then((value) {
                setState(() {
                  _isLoggedIn = true;
                  _userObj = value!;
                });
            }).catchError((e){
              print(e);
              });
              },
            child: Text("Login with Google"),),),
        ),
      ),
    );
  }
}
