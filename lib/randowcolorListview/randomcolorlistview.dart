import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorListView extends StatelessWidget {
  const RandomColorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _random = new Random();
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container();
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 5,
            ),
        itemCount: 8);
  }
}
