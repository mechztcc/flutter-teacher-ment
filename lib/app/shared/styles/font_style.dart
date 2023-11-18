import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyle {
  header() {
    return GoogleFonts.rajdhani(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );
  }

  span() {
    return GoogleFonts.rajdhani(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  small() {
    return GoogleFonts.rajdhani(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.green.shade400);
  }
}
