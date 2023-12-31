import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart' as AB;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedButtonWidget extends StatelessWidget {
  final String title;
  final String id;
  const AnimatedButtonWidget({
    Key? key,
    this.title = "AnimatedButtonWidget",
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: AB.AnimatedButton(
        animatedOn: AB.AnimatedOn.onTap,
        onPress: () {
          Modular.to.navigate('/question/$id');
        },
        onChanges: (change) {},
        height: 45,
        text: 'START',
        isReverse: true,
        animationDuration: const Duration(milliseconds: 800),
        transitionType: AB.TransitionType.LEFT_TO_RIGHT,
        backgroundColor: const Color(0xff9BB2E5),
        textStyle: GoogleFonts.rajdhani(
          fontSize: 20,
          letterSpacing: 1,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        selectedBackgroundColor: Colors.red.shade400,
        selectedTextColor: Colors.white,
        selectedText: 'STARTING!',
        borderColor: Colors.white,
        borderWidth: 1,
        borderRadius: 20,
      ),
    );
  }
}
