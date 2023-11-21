import 'package:flutter/material.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class QuestionWidget extends StatelessWidget {
  final String title;
  const QuestionWidget({Key? key, this.title = "QuestionWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Text(
          'Pick one of your favorite Star Wars films',
          style: FontStyle().span(),
        ),
      ),
    );
  }
}
