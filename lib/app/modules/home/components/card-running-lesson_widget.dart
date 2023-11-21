import 'package:flutter/material.dart';
import 'package:peter_space/app/shared/components/animated_button_widget.dart';
import 'package:peter_space/app/shared/components/badge_level_widget.dart';
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
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Atividade de História', style: FontStyle().span()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('10 Questions', style: FontStyle().small()),
            ],
          ),
          const AnimatedButtonWidget(id: '1'),
        ],
      ),
    );
  }
}
