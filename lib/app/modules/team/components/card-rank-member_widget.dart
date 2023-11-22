import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 253, 223, 223),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            child: CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(2), // Border radius
                child: ClipOval(
                  child: Image.asset(
                    'assets/pet.jpg',
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Clara Batista',
                style: FontStyle().span(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '28 points',
                style: FontStyle().small(),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                FontAwesomeIcons.trophy,
                size: 20,
                color: position <= 3 ? Colors.orange : Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
