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
      return Color(0xff9BB2E5);
    }

    if (isLoading) {
      return Colors.blue.shade200;
    }

    if (type == 'purple') {
      return Colors.purple.shade100;
    }
    return Colors.white;
  }

  Color getTextColor() {
    if (type == 'pink') {
      return const Color.fromARGB(255, 253, 223, 223);
    }

    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
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
              Radius.circular(20),
            ),
          ),
        ),
        child: Text(
          isLoading ? 'Loading...' : label,
          style: GoogleFonts.rajdhani(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
