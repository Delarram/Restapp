import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class PageViewListViewDialog extends StatefulWidget {
  const PageViewListViewDialog({Key? key, required this.imageList}) : super(key: key);

  final List<String> imageList;

  @override
  State<PageViewListViewDialog> createState() => _PageViewListViewDialogState();
}

class _PageViewListViewDialogState extends State<PageViewListViewDialog> {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider( options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 2.5,
        viewportFraction: 1,
        aspectRatio: 16 / 9,
        autoPlay: true,
        enlargeCenterPage: true
    ),
      items: widget.imageList.map(
          (e){
          return GestureDetector(
            onTap: (){
            showDialog(context: context, builder: (context){
              return StatefulBuilder(builder: (context,setState){
                return Dialog(
                 child:  Container(
                   height: MediaQuery.of(context).size.height,
                   width: MediaQuery.of(context).size.width,
                   color: Colors.black,
                   child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.yellow,
                          child: PageView.builder(
                              onPageChanged: (page) {
                                setState((){
                                  // _position = page.toDouble();
                                });

                              },
                              itemCount: widget.imageList.length,
                              itemBuilder:
                                  (BuildContext context, int itemIndex) {
                                return Zoom(
                                    zoomSensibility: 2.3,
                                    colorScrollBars: Colors.transparent,
                                    doubleTapZoom: false,
                                    maxZoomHeight: 1200,
                                    maxZoomWidth: 1200,
                                    initZoom: 0,
                                    // centerOnScale: true,
                                    backgroundColor: Colors.black,
                                    child: Image.network(
                                        ""
                                      // imageLink + widget.imageList[_position.round()]
                                    )
                                );
                              }),
                        ),
                      ),
                    ],
                   ),
                 ),
                );
              });
            });
            },
            child: Container(
              child: Image.network(""),
            ),
          );
          }).toList()
    );
  }
}
