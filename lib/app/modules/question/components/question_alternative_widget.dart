import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionAlternativeWidget extends StatefulWidget {
  final String title;
  final String alternative;
  const QuestionAlternativeWidget({
    Key? key,
    this.title = "QuestionAlternativeWidget",
    required this.alternative,
  }) : super(key: key);

  @override
  State<QuestionAlternativeWidget> createState() =>
      _QuestionAlternativeWidgetState();
}

class _QuestionAlternativeWidgetState extends State<QuestionAlternativeWidget> {
  bool isChecked = false;
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = true;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isChecked ? Colors.green.shade300 : Colors.grey.shade100,
        ),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              activeColor: Colors.transparent,
              side: const BorderSide(color: Colors.black),
              checkColor: isChecked ? Colors.white : Colors.grey,
              onChanged: (v) {},
            ),
            Flexible(
              child: Text(
                widget.alternative,
                style: GoogleFonts.rajdhani(
                    color: isChecked ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
