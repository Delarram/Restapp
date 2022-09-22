import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FaceBookSignIn extends StatefulWidget {
  const FaceBookSignIn({Key? key}) : super(key: key);

  @override
  State<FaceBookSignIn> createState() => _FaceBookSignInState();
}

class _FaceBookSignInState extends State<FaceBookSignIn> {
  Map? _userData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook (Logged ' + (_userData == null ? 'Out' : 'In') + ')'),
        elevation: 3,
      ),
      body: SafeArea(
        child:Column(
          children: [
                MaterialButton(color: Colors.blue,
                  onPressed: () async{
                    final result = await FacebookAuth.i.login(
                        permissions: ["public_profile", "email"]
                    );

                    if (result.status == LoginStatus.success) {

                      final userData = await FacebookAuth.i.getUserData(
                        fields: "email,name",
                      );

                      setState(() {
                        _userData = userData;
                      });

                    }
                  },child: Text("Log in"),
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
