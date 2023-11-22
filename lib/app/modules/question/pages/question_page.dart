import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/modules/question/components/question_alternatives_pack_widget.dart';
import 'package:peter_space/app/modules/question/components/question_widget.dart';

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
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.red.shade100,
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.chevronLeft, color: Colors.black),
          onPressed: () {
            Modular.to.navigate('/home');
          },
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                child: const QuestionWidget(),
              ),
              const Text('Alternatives 5'),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      QuestionAlternativesPackWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
