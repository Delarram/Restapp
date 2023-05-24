import 'package:flutter/material.dart';
import 'package:rest_api/screens/landingScreen/landing_screen.dart';

class NeumorphismPage extends StatefulWidget {
  const NeumorphismPage({Key? key}) : super(key: key);

  @override
  State<NeumorphismPage> createState() => _NeumorphismPageState();
}

class _NeumorphismPageState extends State<NeumorphismPage> {
  bool _isEnter = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>LandingPage()));
          setState(() {
            _isEnter = !_isEnter;
          });
        },
        child: AnimatedContainer(
          child: Text(
            'Login',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          // Providing duration parameter
          // to create animation
          duration: const Duration(
            milliseconds: 200,
          ),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            // when _isElevated is false, value
            // of inset parameter will be true
            // that will create depth effect.
            boxShadow: _isEnter
                ?
                // Elevated Effect
                [
                    const BoxShadow(
                      color: Color(0xFFBEBEBE),
                      // Shadow for bottom right corner
                      offset: Offset(10, 10),
                      blurRadius: 30,
                      spreadRadius: 1,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      // Shadow for top left corner
                      offset: Offset(-10, -10),
                      blurRadius: 30,
                      spreadRadius: 1,
                    ),
                  ]
                : // Depth Effect
                [
                    const BoxShadow(
                      color: Color(0xFFBEBEBE),
                      // Shadow for bottom right corner
                      offset: Offset(10, 10),
                      blurRadius: 30,
                      spreadRadius: 1,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      // Shadow for top left corner
                      offset: Offset(-11, -11),
                      blurRadius: 30,
                      spreadRadius: 1,
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
