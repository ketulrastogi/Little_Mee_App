import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/widgets/VideoContentCard/VideoContentCardWidget_ViewModel.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoContentCardWidgetView extends StatefulWidget {
  final String videoId;

  const VideoContentCardWidgetView({Key key, this.videoId}) : super(key: key);
  @override
  _VideoContentCardWidgetViewState createState() =>
      _VideoContentCardWidgetViewState();
}

class _VideoContentCardWidgetViewState
    extends State<VideoContentCardWidgetView> {
  // VideoPlayerController _videoPlayerController1;
  // VideoPlayerController _videoPlayerController2;
  // ChewieController _chewieController;

  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    this.initializePlayer();
  }

  @override
  void dispose() {
    // _videoPlayerController1.dispose();
    // _videoPlayerController2.dispose();
    // _chewieController.dispose();

    super.dispose();
  }

  Future<void> initializePlayer() async {
    // _videoPlayerController1 = VideoPlayerController.network(widget.videoUrl);
    // _videoPlayerController1 = VideoPlayerController.network(
    //     'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4');
    // await _videoPlayerController1.initialize();
    // // _videoPlayerController2 = VideoPlayerController.network(
    // //     'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4');
    // // await _videoPlayerController2.initialize();
    // _chewieController = ChewieController(
    //   videoPlayerController: _videoPlayerController1,
    // );

    // _controller = YoutubePlayerController(
    //   initialVideoId: '${widget.videoUrl}',
    //   flags: YoutubePlayerFlags(
    //     autoPlay: false,
    //     mute: false,
    //   ),
    // );

    _controller = YoutubePlayerController(
      initialVideoId: '${widget.videoId}',
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        autoPlay: false,
      ),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VideoContentCardWidgetViewModel>.reactive(
      viewModelBuilder: () => VideoContentCardWidgetViewModel(),
      builder: (context, model, child) {
        return Container(
          // height: 230.0,
          // width: MediaQuery.of(context).size.width / 2.2,
          padding: EdgeInsets.all(4.0),
          // child: WebviewScaffold(
          //   url: "https://www.youtube.com/embed/${widget.videoUrl}",
          // ),
          child: YoutubePlayerControllerProvider(
            // Provides controller to all the widget below it.
            controller: _controller,
            child: YoutubePlayerIFrame(
                // aspectRatio: 16 / 9,
                ),
          ),
        );
      },
    );
  }
}
