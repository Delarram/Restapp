import 'package:flutter/material.dart';

class PageViewListViewDialog extends StatefulWidget {
  const PageViewListViewDialog({Key? key, required this.imageList}) : super(key: key);

  final List<String> imageList;

  @override
  State<PageViewListViewDialog> createState() => _PageViewListViewDialogState();
}

class _PageViewListViewDialogState extends State<PageViewListViewDialog> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(

    );
  }
}
