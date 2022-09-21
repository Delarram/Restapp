import 'package:flutter/material.dart';

class FaceBookSignIn extends StatefulWidget {
  const FaceBookSignIn({Key? key}) : super(key: key);

  @override
  State<FaceBookSignIn> createState() => _FaceBookSignInState();
}

class _FaceBookSignInState extends State<FaceBookSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FaceBook SignIn"),
        elevation: 3,
      ),
      body: SafeArea(
        child:Column(
          children: [
                MaterialButton(color: Colors.blue,
                  onPressed: (){},child: Text("Log in"),
                ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){},child: Text("Log out"),)
          ],
        ),
      ),
    );
  }
}
