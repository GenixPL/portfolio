import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 800),
          child: Column(
            children: <Widget>[
              _buildName(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildName() {
    return Text(
      'Łukasz Niedziałek',
      style: GoogleFonts.robotoSlab(
        fontSize: 20,
      ),
    );
  }
}
