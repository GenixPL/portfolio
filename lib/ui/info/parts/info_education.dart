import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/hideable_box/hideadble_box.dart';
import 'package:portfolio/ui/info/parts/info_period.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';
import 'package:portfolio/values/uni_courses.dart';

class InfoEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoHeader('Education'),
        SizedBox(height: 4),
        _buildUniInfo(),
        SizedBox(height: 8),
        _buildCourses(),
      ],
    );
  }

  Widget _buildUniInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            InfoHeader(
              'BSc Computer Science (EN)',
              fontSize: 18,
              color: Colors.white,
            ),
            SizedBox(width: 32),
            Flexible(child: InfoPeriod('Sep 2016','Feb 2020')),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: InfoRegularText('Warsaw University of Technology'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child:
              InfoRegularText('Faculty of Mathematics and Information Science'),
        ),
      ],
    );
  }

  Widget _buildCourses() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 450),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  InfoRegularText('Courses'),
                  InfoRegularText(
                    '(the most important ones)',
                    fontSize: 14,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 2),
          HideableBox(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  for (int i = 0; i < uniCourses.length * 2 - 1; i++)
                    (i % 2 == 0)
                        ? InfoRegularText(uniCourses[i ~/ 2])
                        : SizedBox(height: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
