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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 100,
                          child:  ListView.separated(
                              padding: EdgeInsets.all(8),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: (){
                                      setState((){
                                        // _position=index.toDouble();
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          border: Border.all(width: 2,
                                               color:
                                              // (_position == index)?
                                              Color(0xffF48FB1)
                                                  // : Colors.transparent
                                          )
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(7),
                                          child: Image.network(""
                                              // imageLink + widget.imageList[index]
                                          )
                                      ),
                                    ));
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 5);
                              },
                              itemCount: widget.imageList.length),
                        ),
                      ),
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment:Alignment.topLeft,
                              child: Icon(
                                Icons.close,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
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
