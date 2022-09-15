import 'package:flutter/material.dart';
import 'package:rest_api/pagination/refresh_listview_itemview.dart';

class RefreshListView extends StatefulWidget {
  const RefreshListView({Key? key}) : super(key: key);

  @override
  State<RefreshListView> createState() => _RefreshListViewState();
}

class _RefreshListViewState extends State<RefreshListView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refresh AppBar"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                 RefreshListViewItemView(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: MaterialButton(
                    onPressed: (){},child: Text("ok"),color: Colors.amber,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
