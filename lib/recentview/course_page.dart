import 'package:flutter/material.dart';

class RecentViewPage extends StatelessWidget {
  const RecentViewPage({Key? key}) : super(key: key);

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

          ],
        ),
      ),
    );
  }
}
