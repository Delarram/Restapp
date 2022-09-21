import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:rest_api/googleSignIn/google_sign_up_third/login_provider.dart';
import 'package:rest_api/googleSignIn/google_sign_up_third/toast_message.dart';
import 'package:rest_api/screens/loginscreen/login_screen.dart';

import 'loading_ui.dart';

class SignInWithGoogle extends StatefulWidget {
  const SignInWithGoogle({Key? key}) : super(key: key);

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

class _SignInWithGoogleState extends State<SignInWithGoogle> {
    bool isLoading = true;


  @override
  Widget build(BuildContext context) {
    var loginbody = Form(
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        color: Color(0xfff3f4f5),
        padding: EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   TextFormField(
                     decoration: InputDecoration(
                       hintText: "enter email"
                     ),
                   ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter password"
                      ),
                    ),
                    Text(
                      "Forgot your password?",
                      style: GoogleFonts.poppins(
                          color: Color(0xff3b5998), fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [

                    SizedBox(
                      height: 10,
                    ),
                    GoogleButton(),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "not registered yet? ",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          "create an account",
                          style: GoogleFonts.poppins(
                              color:Colors.white70, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Login",
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          titleSpacing: -10,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: isLoading ? LoadingUI(
          loading: loginbody,
        )
            : loginbody);

  }
}


 class GoogleButton extends StatefulWidget {
   const GoogleButton({accessToken, name, userId, email,Key? key}) : super(key: key);

  @override
  State<GoogleButton> createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
   @override
   Widget build(BuildContext context) {
     return SizedBox(
       width: double.infinity,
       child: RaisedButton(
         onPressed: () async {
           GoogleSignIn _googleSignIn = GoogleSignIn(
             scopes: [
               'email',
               'https://www.googleapis.com/auth/contacts.readonly',
             ],
           );
           print('google');
           _googleSignIn.signIn().then((value) async {
             bool isSingedIn = await _googleSignIn.isSignedIn();
             if (isSingedIn) {
               _googleSignIn.currentUser!.authentication.then((value) async {
                 print("tokne==>${value.accessToken}");
                 loginWithGoogle(
                     value.accessToken,
                     _googleSignIn.currentUser!.displayName,
                     _googleSignIn.currentUser!.id,
                     _googleSignIn.currentUser!.email,
                 );
               });
             }
           });
         },
         color: Colors.white,
         shape: RoundedRectangleBorder(
           borderRadius: new BorderRadius.circular(5.0),
         ),
         child: Container(
           padding: EdgeInsets.symmetric(vertical: 16),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               // Image.asset(
               //   "assets/icons/google_icon.png", height: 24, width: 24,),
               Icon(Icons.person),
               Padding(padding: EdgeInsets.symmetric(horizontal: 13)),
               Text(
                 'Login with Google'.toUpperCase(),
                 style: GoogleFonts.poppins(
                   fontSize: 12,
                   fontWeight: FontWeight.w400,
                   color: Colors.black,
                 ),
               )
             ],
           ),
         ),
       ),
     );
   }

   loginWithGoogle(String? accessToken, String? displayName, String id, String email) {
     bool isLoading = true;
     setState(() {
       isLoading = true;
     });
     Provider.of<LoginProvider>(context, listen: false)
         .loginWithGoogle(accessToken, displayName, id, email)
         .then((value) {
       setState(() {});
       print("My get data");
       print(value);
       setState(() {
         isLoading = false;
       });
       if (value['state'] == 201 || value['state'] == 204) {
         print("Login successfully !");

         print(value['data'][1].toString());
         savetoken(value['data'][1].toString());
         // ProfileModelImpl().getProfileAndSaveToDatabase();
         ToastMessage.toasttrue("Login successfully !");
         Future.delayed(Duration(seconds: 2), () {
           Navigator.push(
               context,
               PageTransition(
                   child: LoginScreen(),type:PageTransitionType.rightToLeft));
         });
       } else {
         print(value['message']);
         ToastMessage.toastfalse(value['message']);
       }
     }, onError: (error) {
       setState(() {
         isLoading = false;
       });
       print("My error");
       print(error.toString());
     }).catchError((error) {
       setState(() {
         isLoading = false;
       });
       print("My Catch Error");
       print(error.toString());
     });
   }
   savetoken(token) async {
     final storage = new FlutterSecureStorage();
     await storage.write(key: 'privatetoken', value: token.toString());
   }
}
