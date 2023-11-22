import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyle {
  header() {
    return GoogleFonts.rajdhani(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  subtitle() {
    return GoogleFonts.rajdhani(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color(0xff112D4E),
    );
  }

  span() {
    return GoogleFonts.rajdhani(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 0.2,
    );
  }

  small() {
    return GoogleFonts.rajdhani(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade800,
    );
  }
}
