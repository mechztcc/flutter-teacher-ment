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
    return FontAwesomeIcons.puzzlePiece;
  }

  Color findColor() {
    if (type == 'questions') {
      return Colors.green;
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
            width: 5,
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
