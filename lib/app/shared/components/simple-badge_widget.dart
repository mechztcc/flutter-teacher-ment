import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleBadgeWidget extends StatelessWidget {
  final String title;
  final String label;
  final String type;
  const SimpleBadgeWidget(
      {Key? key,
      this.title = "SimpleBadgeWidget",
      required this.label,
      required this.type})
      : super(key: key);

  IconData findIcon() {
    if (type == 'questions') {
      return FontAwesomeIcons.book;
    }

    if (type == 'exp') {
      return FontAwesomeIcons.gamepad;
    }

    if (type == 'diamond') {
      return FontAwesomeIcons.diamond;
    }

    if (type == 'premium') {
      return FontAwesomeIcons.trophy;
    }

    if (type == 'points') {
      return FontAwesomeIcons.bolt;
    }
    return FontAwesomeIcons.puzzlePiece;
  }

  Color findColor() {
    if (type == 'questions') {
      return Colors.green;
    }

    if (type == 'diamond') {
      return Colors.cyan.shade400;
    }

    if (type == 'premium') {
      return Colors.yellow.shade700;
    }

    return Colors.purple;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 3,
      ),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: findColor(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            findIcon(),
            color: Colors.white,
            size: 15,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            label,
            style: GoogleFonts.rajdhani(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
