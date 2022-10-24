import 'package:flutter/material.dart';

import 'course_homeatk.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("")
              )
            ),
            child: Column(
              children: [ 
                CourseHomeAtk()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

