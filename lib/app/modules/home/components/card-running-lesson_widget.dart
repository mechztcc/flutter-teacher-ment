import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/badge_level_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';

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
  final Duration duration = const Duration(seconds: 2);

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
    return FadeTransition(
      opacity: animation,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 239, 243, 249),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 210, 212, 217),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                BadgeLevelWidget(
                  level: 3,
                  label: 'Expert',
                ),
                SimpleBadgeWidget(
                  label: '5 Points',
                  type: 'points',
                ),
                SimpleBadgeWidget(
                  label: '5 Questions',
                  type: 'questions',
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: double.infinity,
              child: Expanded(child: Divider()),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.scroll,
                      size: 15,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Lesson Name')
                  ],
                ),
                Text('História do brasil')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.graduationCap,
                      size: 15,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Teacher'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.circleInfo,
                            size: 15,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Text('Teacher Alberto')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.calendar,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('End at: 22/10/2022 10:00'),
              ],
            ),
            PrimaryButtonWidget(
              onPress: () {},
              isLoading: false,
              label: 'START',
              height: 45,
              type: 'primary',
            )
          ],
        ),
      ),
    );
  }
}
