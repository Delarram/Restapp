import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshListViewItemView extends StatefulWidget {
   RefreshListViewItemView({Key? key}) : super(key: key);

  @override
  State<RefreshListViewItemView> createState() => _RefreshListViewItemViewState();
}

class _RefreshListViewItemViewState extends State<RefreshListViewItemView> {

  int currentPage = 1;
  bool isRefresh = false;


  final List<String> items = ["car","train","flight","shop","car","train","flight","shop","car","train","flight","shop","car","train","flight","shop",];

  RefreshController _refreshController =
   RefreshController(initialRefresh: false);

  void _onRefresh() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length+1).toString());
    if(mounted)
      setState(() {
      });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return items.isEmpty? Center(child: CircularProgressIndicator()):
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
      itemExtent: 100.0,
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
              title: Text('Item ${items[index]}'),
              subtitle: Text('Item description'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
