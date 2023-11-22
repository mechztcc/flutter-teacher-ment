import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class CardHistoryWidget extends StatelessWidget {
  final String title;
  const CardHistoryWidget({
    Key? key,
    this.title = "CardHistoryWidget",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 194, 211, 249),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.noteSticky,
              color: Color.fromARGB(255, 194, 211, 249),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Temporada 1',
            style: FontStyle().span(),
          ),
          Text(
            '290 questoẽs',
            style: FontStyle().small(),
          ),
          const SizedBox(
            height: 10,
          ),
          const SimpleBadgeWidget(label: 'Ouro', type: 'premium'),
        ],
      ),
    );
  }
}
