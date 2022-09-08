import 'package:flutter/material.dart';
import 'package:rest_api/pagination/refresh_listview_itemview.dart';
class RefreshListView extends StatelessWidget {
  const RefreshListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refresh AppBar"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
