import 'package:flutter/material.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';

class InfoTechnologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoHeader('Technolgies'),
        SizedBox(height: 4),
        _buildMainLanguages(),
        SizedBox(height: 4),
        _buildMainSdks(),
        SizedBox(height: 16),
        _buildOtherLanguages(),
        SizedBox(height: 4),
        _buildOtherSdks(),
      ],
    );
  }

  Widget _buildMainLanguages() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoRegularText('Main languages:'),
        SizedBox(width: 8),
        Flexible(
          child: Wrap(
            children: <Widget>[
              InfoRegularText('Dart, '),
              InfoRegularText('Kotlin, '),
              InfoRegularText('Java, '),
              InfoRegularText('Python'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOtherLanguages() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoRegularText('Other languages:'),
        SizedBox(width: 8),
        Flexible(
          child: Wrap(
            children: <Widget>[
              InfoRegularText('Objective-C, '),
              InfoRegularText('SQL, '),
              InfoRegularText('TypeScript, '),
              InfoRegularText('JavaScript, '),
              InfoRegularText('C#, '),
              InfoRegularText('C, '),
              InfoRegularText('C++, '),
              InfoRegularText('R'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMainSdks() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoRegularText('Main SDKs / Frameworks:'),
        SizedBox(width: 8),
        Flexible(
          child: Wrap(
            children: <Widget>[
              InfoRegularText('Flutter, '),
              InfoRegularText('Android'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOtherSdks() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoRegularText('Other SDKs / Frameworks:'),
        SizedBox(width: 8),
        Flexible(
          child: Wrap(
            children: <Widget>[
              InfoRegularText('iOS, '),
              InfoRegularText('NativeScript'),
            ],
          ),
        ),
      ],
    );
  }
}
