import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';
import 'package:portfolio/ui/common/hideable_box/hideadble_box.dart';
import 'package:portfolio/ui/info/parts/info_basic_info.dart';
import 'package:portfolio/ui/info/parts/info_education.dart';
import 'package:portfolio/ui/info/parts/info_languages.dart';
import 'package:portfolio/ui/info/parts/info_main_projects.dart';
import 'package:portfolio/ui/info/parts/info_technologies.dart';
import 'package:portfolio/ui/info/parts/info_work_experience.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';
import 'package:portfolio/values/uni_courses.dart';

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
              InfoMainProjects(),
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
