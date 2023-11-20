import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class CardRankMemberWidget extends StatelessWidget {
  final String title;
  final int position;
  const CardRankMemberWidget({
    Key? key,
    this.title = "CardRankMemberWidget",
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 210, 212, 217),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.user),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Student name',
                style: FontStyle().span(),
              ),
              const Row(
                children: [
                  SimpleBadgeWidget(label: 'Diamond', type: 'diamond'),
                  SimpleBadgeWidget(label: '89 Points', type: 'points'),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.rankingStar,
              color: position <= 3 ? Colors.orange : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
