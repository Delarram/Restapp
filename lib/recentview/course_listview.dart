import 'package:flutter/material.dart';

class RecentViewListView extends StatelessWidget {
  const RecentViewListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 7);
  }
}
