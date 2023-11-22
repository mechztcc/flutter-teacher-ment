import 'package:flutter/material.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class RankWinnerWidget extends StatelessWidget {
  final String title;
  const RankWinnerWidget({Key? key, this.title = "RankWinnerWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, top: 50),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipOval(
                child: Image.asset(
                  'assets/pet.jpg',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Alberto Paiva',
                style: FontStyle().header(),
              ),
              Text(
                '450 points',
                style: FontStyle().span(),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
