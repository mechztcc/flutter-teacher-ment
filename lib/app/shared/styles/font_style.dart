import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyle {
  header() {
    return GoogleFonts.varelaRound(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  subtitle() {
    return GoogleFonts.varelaRound(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color(0xff112D4E),
    );
  }

  span() {
    return GoogleFonts.varelaRound(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: const Color.fromARGB(255, 42, 39, 39),
      height: 0.2,
    );
  }

  small() {
    return GoogleFonts.varelaRound(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade800,
    );
  }
}
