import 'package:flutter/material.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';

class InfoPeriod extends StatelessWidget {
  final String first;
  final String second;

  InfoPeriod(this.first, this.second);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Build the textspan
        var span = TextSpan(
          text: '$first - $second',
          style: InfoHeader.getDefaultTextStyle(),
        );

        // Use a textpainter to determine if it will exceed max lines
        var tp = TextPainter(
          maxLines: 1,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          text: span,
        );

        // trigger it to layout
        tp.layout(maxWidth: constraints.maxWidth);

        // whether the text overflowed or not
        var exceeded = tp.didExceedMaxLines;

        if (exceeded) {
          return _buildColumn();
        } else {
          return _buildRow();
        }
      },
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        InfoHeader(
          this.first,
          fontSize: 18,
          color: Colors.white,
        ),
        InfoHeader(
          ' - ',
          fontSize: 18,
          color: Colors.white,
        ),
        InfoHeader(
          this.second,
          fontSize: 18,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _buildColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            InfoHeader(
              this.first,
              fontSize: 18,
              color: Colors.white,
            ),
            InfoHeader(
              ' - ',
              fontSize: 18,
              color: Colors.white,
            ),
            InfoHeader(
              this.second,
              fontSize: 18,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
