import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FirstVideoPlayer extends StatefulWidget {
  @override
  _FirstVideoPlayerState createState() => _FirstVideoPlayerState();
}

class _FirstVideoPlayerState extends State<FirstVideoPlayer> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller =
        VideoPlayerController.asset('videos/SampleVideo_1280x720_2mb.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(150.0),
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}
