import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YouTubePlayer extends StatefulWidget {
  @override
  _YouTubePlayerState createState() => _YouTubePlayerState();
}

class _YouTubePlayerState extends State<YouTubePlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: Text('YT'),
    );
  }
}
