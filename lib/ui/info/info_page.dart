import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';
import 'package:portfolio/ui/info/parts/info_basic_info.dart';
import 'package:portfolio/ui/info/parts/info_education.dart';
import 'package:portfolio/ui/info/parts/info_languages.dart';
import 'package:portfolio/ui/info/parts/info_projects.dart';
import 'package:portfolio/ui/info/parts/info_technologies.dart';
import 'package:portfolio/ui/info/parts/info_work_experience.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InfoBasicInfo(),
              _buildHorizontalSeparator(),
              InfoEducation(),
              _buildHorizontalSeparator(),
              InfoWorkExperience(),
              _buildHorizontalSeparator(),
              InfoProjects(),
              _buildHorizontalSeparator(),
              InfoTechnologies(),
              _buildHorizontalSeparator(),
              InfoLanguages(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalSeparator() {
    return SizedBox(height: 48);

//    return Padding(
//      padding: const EdgeInsets.only(top: 12, bottom: 12),
//      child: Container(
//        height: 2,
//        constraints: BoxConstraints(maxWidth: 800),
//        decoration: BoxDecoration(
//          color: Colors.white,
//          borderRadius: BorderRadius.circular(12),
//        ),
//      ),
//    );
  }
}
