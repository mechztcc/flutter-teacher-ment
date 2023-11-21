import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/question/components/question_alternative_widget.dart';

class QuestionAlternativesPackWidget extends StatelessWidget {
  final String title;
  const QuestionAlternativesPackWidget(
      {Key? key, this.title = "QuestionAlternativesPackWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        QuestionAlternativeWidget(
          alternative: 'The Clone Wars',
        ),
        QuestionAlternativeWidget(
          alternative: 'Rogue One: A Star Wars Story',
        ),
        QuestionAlternativeWidget(
          alternative: 'The Last Jedi',
        ),
        QuestionAlternativeWidget(
          alternative: 'Not The Phantom Menace',
        ),
      ],
    );
  }
}
