import 'package:flutter/material.dart';
import 'package:portfolio/ui/circle_button/circle_button.dart';
import 'package:portfolio/ui/common/top_bar/top_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleButton(
                backgroundColor: Colors.grey[850],
                textColor: Colors.white,
                onTap: () => print("DUPA"),
              ),
              SizedBox(width: 16)
,              CircleButton(
                backgroundColor: Colors.grey[850],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
