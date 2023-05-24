import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_api/videoplayer/video.dart';

import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {

  late VideoPlayerController _controller;
  int _currentIndex = 0 ;


  void _playVideo({int index = 0 , bool  init = false}){
     if(index< 0 || index >= videos.length) return;

     _controller = VideoPlayerController.network(videos[_currentIndex].url)
     ..addListener(()=>setState((){}))
     ..setLooping(true)
     ..initialize().then((value) => _controller.play());
  }


  @override
  void initState() {
 _playVideo();
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }


  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.purple,
            child:_controller.value.isInitialized ?
            Column(
              children: [
               SizedBox(
                 height: 200.h,
                 child:VideoPlayer(_controller),
               )
              ],
            ) :
            Center(child: CircularProgressIndicator(color: Colors.white)),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: videos.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=>
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15,vertical:10),
                      child: Row(
                        children: [
                          Container(
                              color: Colors.pink,
                              height:100,
                              width:100,
                              margin:const EdgeInsets.all(8),
                              child: Image.network(videos[index].thumbnail,fit: BoxFit.contain,)),
                          const SizedBox(width: 8,height: 8,),
                          Text("${videos[index].name}")
                        ],
                      ),
                    )
            ),
          )
        ],
      ),
    );
  }
}
