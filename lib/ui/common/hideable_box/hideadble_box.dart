import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HideableBox extends StatefulWidget {
  final Widget child;

  HideableBox({
    @required this.child,
  });

  @override
  _HideableBoxState createState() => _HideableBoxState();
}

class _HideableBoxState extends State<HideableBox>
    with TickerProviderStateMixin {
  bool _isShown = false;
  AnimationController _animationController;

  @override
  initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  @override
  dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: _buildButton()),
            ],
          ),
          if (_isShown) widget.child,
        ],
      ),
    );
  }

  Widget _buildButton() {
    return GestureDetector(
      onTap: () {
        setState(() => _isShown = !_isShown);
        if (_isShown) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      },
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: AnimatedBuilder(
            animation: _animationController,
            child: Icon(
              FontAwesomeIcons.chevronDown,
              color: Colors.white,
              size: 16,
            ),
            builder: (context, child) => Transform.rotate(
              angle: _animationController.value * pi,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
