import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final Function onPress;
  final bool isLoading;
  final String label;
  const PrimaryButtonWidget({
    Key? key,
    this.title = "PrimaryButtonWidget",
    required this.onPress,
    required this.isLoading,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          if (!isLoading) {
            onPress();
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade400,
          padding: const EdgeInsets.all(12),
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: Text(
          isLoading ? 'Loading...' : label,
          style: GoogleFonts.rajdhani(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
