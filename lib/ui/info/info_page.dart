import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';
import 'package:portfolio/ui/common/hideable_box/hideadble_box.dart';
import 'package:portfolio/values/uni_courses.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 800),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildBasicInfo(),
              _buildHorizontalSeparator(),
              _buildEducation(),
              _buildHorizontalSeparator(),
              _buildWorkExperience(),
              _buildHorizontalSeparator(),
              _buildLanguges(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader(
          'Łukasz Niedziałek',
          fontSize: 24,
        ),
        // SizedBox(height: 4),
    
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Education'),
        SizedBox(height: 4),
        Row(
          children: <Widget>[
            _buildHeader(
              '2016 - 2020 ',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            _buildHeader(
              ' B.E. Computer Science (EN) ',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        _buildRegularText('   Warsaw University of Technology'),
        _buildRegularText('   Faculty of Mathematics and Information Science'),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                _buildRegularText('Courses'),
                _buildRegularText(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                for (int i = 0; i < uniCourses.length; i++)
                  _buildRegularText(uniCourses[i]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWorkExperience() {
    return Column(
      children: <Widget>[
        _buildHeader('Work Experience'),
        // TOOD
      ],
    );
  }

  Widget _buildLanguges() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader('Languages'),
        SizedBox(height: 4),
        _buildRegularText('  - Polish  (native)'),
        _buildRegularText('  - English  (C1)'),
        Row(
          children: <Widget>[
            _buildRegularText('  - German  (~B1 '),
            Icon(Icons.arrow_upward, size: 16),
            _buildRegularText(')'),
          ],
        ),
      ],
    );
  }

  // OTHER

  Widget _buildHeader(
    String text, {
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return Text(
      text,
      style: GoogleFonts.robotoSlab(
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 1.5,
      ),
    );
  }

  Widget _buildRegularText(
    String text, {
    fontSize = 16,
  }) {
    return Text(
      text,
      style: GoogleFonts.robotoSlab(
        fontSize: fontSize,
      ),
    );
  }

  Widget _buildHorizontalSeparator() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      child: Container(
        height: 2,
        constraints: BoxConstraints(maxWidth: 800),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
