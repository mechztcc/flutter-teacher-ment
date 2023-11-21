import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedButtonWidget extends StatelessWidget {
  final String title;
  const AnimatedButtonWidget({
    Key? key,
    this.title = "AnimatedButtonWidget",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: AnimatedButton(
        animatedOn: AnimatedOn.onTap,
        onPress: () {},
        onChanges: (change) {},
        height: 45,
        text: 'START',
        isReverse: true,
        animationDuration: const Duration(milliseconds: 800),
        transitionType: TransitionType.LEFT_TO_RIGHT,
        backgroundColor: Colors.blue.shade400,
        textStyle: GoogleFonts.rajdhani(
          fontSize: 20,
          letterSpacing: 1,
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
        selectedBackgroundColor: Colors.red.shade400,
        selectedTextColor: Colors.white,
        selectedText: 'STARTING!',
        borderColor: Colors.white,
        borderWidth: 1,
        borderRadius: 10,
      ),
    );
  }
}
