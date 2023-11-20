import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/badge_level_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';

class CardRunningLessonWidget extends StatelessWidget {
  final String title;
  const CardRunningLessonWidget(
      {Key? key, this.title = "CardRunningLessonWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white),
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
            type: 'danger',
            height: 45,
          )
        ],
      ),
    );
  }
}
