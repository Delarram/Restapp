import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rest_api/videoplayer/video.dart';

import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {

  late VideoPlayerController _controller;

  @override
  void initState() {
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
          ),
          Flexible(
            child: ListView.builder(
                itemCount: videos.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=>
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15,vertical: 10),
                      child: Row(
                        children: [
                          Container(
                              color: Colors.pink,
                              height:100,
                              width:100,
                              margin: const EdgeInsets.all(8),
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
