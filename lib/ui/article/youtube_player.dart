import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// https://github.com/flutter/flutter_web/blob/master/examples/html_platform_view/lib/main.dart
// https://stackoverflow.com/questions/58150503/webview-in-flutter-web

class YouTubePlayer extends StatelessWidget {
  final List<String> values;

  YouTubePlayer(this.values);

  @override
  Widget build(BuildContext context) {
    if (values[0] == null) {
      return Text('YouTubePlayer - NO VALUE');
    }

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      values[0],
      (int viewId) => IFrameElement()
        ..src = values[0]
        ..style.border = 'none',
    );

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: HtmlElementView(viewType: values[0]),
    );
  }
}
