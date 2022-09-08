import 'package:flutter/material.dart';

class RefreshListView extends StatefulWidget {
  const RefreshListView({Key? key}) : super(key: key);


  @override
  State<RefreshListView> createState() => _RefreshListViewState();
}

class _RefreshListViewState extends State<RefreshListView> {
  final List<String> items = ["hello","Car","Flight","Train"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refresh AppBar"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: const Color(0xff764abc),
                        child: Text(items[index],style: TextStyle(fontSize: 13),),
                      ),
                    ),
                    title: Text('Item ${items[index]}'),
                    subtitle: Text('Item description'),
                    trailing: Icon(Icons.more_vert),
                  );
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}
