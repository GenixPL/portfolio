import 'package:flutter/material.dart';

class TextTilesWrapper extends StatelessWidget {
  final List<String> texts;
  final WrapAlignment wrapAlignment;

  TextTilesWrapper(
      {@required this.texts, this.wrapAlignment = WrapAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      alignment: wrapAlignment,
      children: <Widget>[
        for (int i = 0; i < texts.length; i++)
          _buildRoundedTile(context, texts[i]),
      ],
    );
  }

  Widget _buildRoundedTile(BuildContext context, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
