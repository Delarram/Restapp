import 'package:flutter/material.dart';


class GoogleSignUPScreen extends StatefulWidget {
  const GoogleSignUPScreen({Key? key}) : super(key: key);


  @override
  State<GoogleSignUPScreen> createState() => _GoogleSignUPScreenState();
}

class _GoogleSignUPScreenState extends State<GoogleSignUPScreen> {

  @override
  Widget build(BuildContext context) {
    bool isSignIn = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Sign In "),
      ),
      body: Container(
        alignment: Alignment.center,
        child:
        (isSignIn != true)?
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Display Name"),
                  subtitle: Text("email"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "SingIn Successfully",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15,),
                MaterialButton(
                    onPressed: (){
                },
                  color: Colors.blue,
                child: Text("Sign out"),)
              ],
            ),
          ),
        ):
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "SingIn is not Successfully Please login again",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15,),
                MaterialButton(
                  onPressed: (){
                  },
                  color: Colors.blue,
                  child: Text("Sign out"),)
              ],
            ),
          ),
        )
      ),
    );
  }
}
