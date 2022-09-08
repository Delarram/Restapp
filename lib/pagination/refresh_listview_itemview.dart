import 'package:flutter/material.dart';

class RefreshListViewItemView extends StatelessWidget {
   RefreshListViewItemView({Key? key}) : super(key: key);
   final List<String> items = ["car","train","flight","shop","car","train","flight","shop","car","train","flight","shop","car","train","flight","shop",];
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: CircleAvatar(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: const Color(0xff764abc),
                child: Text(
                  items[index],
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            title: Text('Item ${items[index]}'),
            subtitle: Text('Item description'),
            trailing: Icon(Icons.more_vert),
          ),
        );
      },
    );
  }
}
