import 'dart:html';

import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';
class ZoomText extends StatelessWidget {
  const ZoomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Zoom(
                onTap: (){
                  print("widget clicked");
                },onPositionUpdate: (Offset position){
                  print(position);
              },onScaleUpdate: (double scale, double zoom){
                  print("$scale $zoom");
              },
                  centerOnScale: true,
                  initZoom:0.0,
                  doubleTapZoom: true,
                  maxZoomWidth: MediaQuery.of(context).size.height ,
                  maxZoomHeight: 1000.0,
                  child: Center(child: Text("Hello Zoom!!",style: TextStyle(fontSize: 40,color: Colors.black),),)),
            )
          ],
        ),
      ),
    );
  }
}
