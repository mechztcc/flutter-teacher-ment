import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final Function onPress;
  final bool isLoading;
  final String label;
  double? height;
  String? type;
  PrimaryButtonWidget({
    Key? key,
    this.title = "PrimaryButtonWidget",
    required this.onPress,
    required this.isLoading,
    required this.label,
    this.type,
    this.height,
  }) : super(key: key);

  Color getColor() {
    if (type == 'danger') {
      return Colors.red.shade400;
    }

    if (type == 'primary') {
      return Colors.blue.shade300;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: height ?? 65,
      child: ElevatedButton(
        onPressed: () {
          if (!isLoading) {
            onPress();
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: getColor(),
          padding: const EdgeInsets.all(12),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: Text(
          isLoading ? 'Loading...' : label,
          style: GoogleFonts.rajdhani(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
