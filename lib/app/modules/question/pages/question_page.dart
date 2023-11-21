import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/question/components/question_alternatives_pack_widget.dart';
import 'package:peter_space/app/modules/question/components/question_widget.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class QuestionPage extends StatefulWidget {
  final String title;
  final String id;
  const QuestionPage({
    Key? key,
    this.title = 'QuestionPage',
    required this.id,
  }) : super(key: key);
  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                child: const QuestionWidget(),
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Score',
                          style: FontStyle().subtitle(),
                        ),
                        const Row(
                          children: [
                            SimpleBadgeWidget(
                                label: 'Total 10', type: 'purple'),
                            SimpleBadgeWidget(
                                label: 'Wrongs 4', type: 'danger'),
                            SimpleBadgeWidget(
                              label: 'Corrects 4',
                              type: 'questions',
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const QuestionAlternativesPackWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
