import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  final String title;
  const LogoWidget({Key? key, this.title = "LogoWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'PETER.',
          style: GoogleFonts.vinaSans(
            fontSize: 40,
            color: Colors.blue,
            height: 0.1,
          ),
        ),
        Text(
          'SPACE',
          style: GoogleFonts.vinaSans(
            fontSize: 40,
            color: Colors.purple.shade300,
          ),
        ),
      ],
    );
  }
}
