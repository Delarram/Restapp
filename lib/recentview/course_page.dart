import 'package:flutter/material.dart';
import 'package:rest_api/recentview/course_listview.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Color(0xffF56F37),
        title: Text("My Course"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        height: double.infinity,
        width: double.infinity,
        child: CourseListview(),
      ),
    );
  }
}
