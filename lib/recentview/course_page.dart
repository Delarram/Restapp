import 'package:flutter/material.dart';
import 'package:rest_api/recentview/course_listview.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Course"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
               CourseListview()
          ],
        ),
      ),
    );
  }
}
