import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class UserInformationWidget extends StatelessWidget {
  final String title;
  final String name;
  const UserInformationWidget(
      {Key? key, this.title = "UserInformationWidget", required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 60, 10, 20),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 239, 243, 249),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 210, 212, 217),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.person,
              size: 30,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 5,
            ),
            Observer(
              builder: (_) => Column(
                children: [
                  Text(name, style: FontStyle().subtitle()),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(children: [
          SimpleBadgeWidget(label: 'NVL 26', type: 'exp'),
          SimpleBadgeWidget(label: 'Diamond', type: 'diamond'),
          SimpleBadgeWidget(label: 'Premium', type: 'premium'),
        ]),
      ]),
    );
  }
}
