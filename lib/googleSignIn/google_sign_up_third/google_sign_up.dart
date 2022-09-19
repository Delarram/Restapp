import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';



final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email'
  ]
);

class GoogleSignUPScreen extends StatefulWidget {
  const GoogleSignUPScreen({Key? key}) : super(key: key);


  @override
  State<GoogleSignUPScreen> createState() => _GoogleSignUPScreenState();
}

class _GoogleSignUPScreenState extends State<GoogleSignUPScreen> {

  GoogleSignInAccount? _currentUser;
  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account){
      setState((){
      _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _currentUser;
    bool isSignIn = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Sign In "),
      ),
      body: Container(
        alignment: Alignment.center,
        child:
        (user != null)?
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children: [
                ListTile(
                  leading: GoogleUserCircleAvatar(identity: user,),
                  title: Text("${user.displayName}"),
                  subtitle: Text("${user.email}"),
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
                      signOut();
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
                    signIn();
                  },
                  color: Colors.blue,
                  child: Text("Sign in"),
                )
              ],
            ),
          ),
        )
      ),
    );
  }

}
void signOut(){
  _googleSignIn.disconnect();
}

  Future<void> signIn() async{
  try{
    await _googleSignIn.signIn();
  }catch(e){
    print("getting error while signIn$e");
  }
}
