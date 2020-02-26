import 'package:flutter/material.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';

class InfoBasicInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildName(),
        SizedBox(height: 4),
        _buildContact(),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildName() {
    // TODO add icon downloading CV in pdf
    return InfoHeader(
      'Łukasz Niedziałek',
      fontSize: 24,
    );
  }

  Widget _buildContact() {
    return Row(
      children: <Widget>[
        InfoHeader(
          'Contact:',
          fontSize: 16,
          color: Colors.white,
        ),
        SizedBox(width: 4),
        InfoRegularText('lhniedzialek@gmail.com'),
        //TODO add shortcut to mail app
      ],
    );
  }
}
