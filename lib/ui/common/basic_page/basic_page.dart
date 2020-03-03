import 'package:flutter/material.dart';
import 'package:portfolio/ui/top_bar/top_bar.dart';

class BasicPage extends StatelessWidget {
  final List<Widget> children;
  final bool limitWidth;
  final double maxWidth;
  final EdgeInsets padding;
  final String backgroundImgPath;

  BasicPage({
    this.children,
    this.limitWidth = true,
    this.maxWidth = 800,
    this.padding = const EdgeInsets.fromLTRB(16, 32, 16, 16),
    this.backgroundImgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Expanded(
            child: ScrollConfiguration(
              behavior: _CustomScrollBehavior(),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: padding,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: limitWidth ? maxWidth : double.infinity,
                          ),
                          child: Column(
                            children: children,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
