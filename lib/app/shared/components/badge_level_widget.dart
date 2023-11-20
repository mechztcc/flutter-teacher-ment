import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BadgeLevelWidget extends StatelessWidget {
  final String title;
  final int level;
  final String label;
  const BadgeLevelWidget(
      {Key? key,
      this.title = "BadgeLevelWidget",
      required this.level,
      required this.label})
      : super(key: key);

  Color colorLevel() {
    if (level == 1) {
      return Colors.blue;
    }
    if (level == 2) {
      return Colors.yellow;
    }
    if (level == 3) {
      return Colors.red;
    }
    if (level == 4) {
      return Colors.red;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: colorLevel()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.chartSimple,
            color: Colors.white,
            size: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: GoogleFonts.rajdhani(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
