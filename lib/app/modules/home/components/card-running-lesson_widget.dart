import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class CardRunningLessonWidget extends StatefulWidget {
  final String title;

  const CardRunningLessonWidget(
      {Key? key, this.title = "CardRunningLessonWidget"})
      : super(key: key);

  @override
  State<CardRunningLessonWidget> createState() =>
      _CardRunningLessonWidgetState();
}

class _CardRunningLessonWidgetState extends State<CardRunningLessonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  final Duration duration = const Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: duration);
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 194, 211, 249),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.book,
              color: Color(0xff9BB2E5),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Atividade de História', style: FontStyle().span()),
              const SizedBox(
                height: 10,
              ),
              Text('10 Questions', style: FontStyle().small()),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Modular.to.navigate('/question/1');
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                FontAwesomeIcons.play,
                color: Color(0xff9BB2E5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
