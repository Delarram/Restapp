import 'package:flutter/material.dart';
import 'package:rest_api/recentview/course_item_view.dart';

class CourseListview extends StatelessWidget {
  const CourseListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return CourseItemView();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
