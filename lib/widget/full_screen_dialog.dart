import 'package:flutter/material.dart';

class FullScreenDialog extends StatefulWidget {
  const FullScreenDialog({Key? key}) : super(key: key);

  @override
  State<FullScreenDialog> createState() => _FullScreenDialogState();
}

class _FullScreenDialogState extends State<FullScreenDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(onPressed: (){
        _displayDialog(context);
      },),
    );
  }
}

_displayDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: Duration(milliseconds: 2000),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Center(
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children:<Widget> [
                Text('Hai This Is Full Screen Dialog', style: TextStyle(color: Colors.red, fontSize: 20.0),),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("DISMISS",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
