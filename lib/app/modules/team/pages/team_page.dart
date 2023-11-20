import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:peter_space/app/modules/home/components/user-information_widget.dart';
import 'package:peter_space/app/modules/team/components/card-rank-member_widget.dart';
import 'package:peter_space/app/shared/components/navegation_bar_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class TeamPage extends StatefulWidget {
  final String title;
  const TeamPage({Key? key, this.title = 'TeamPage'}) : super(key: key);
  @override
  TeamPageState createState() => TeamPageState();
}

class TeamPageState extends State<TeamPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavegationBarWidget(index: 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) => const UserInformationWidget(name: 'Alberto'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team Name',
                    style: FontStyle().subtitle(),
                  ),
                  const CardRankMemberWidget(position: 1),
                  const CardRankMemberWidget(position: 2),
                  const CardRankMemberWidget(position: 3),
                  const CardRankMemberWidget(position: 4),
                  const CardRankMemberWidget(position: 5),
                  const CardRankMemberWidget(position: 6),
                  const CardRankMemberWidget(position: 7),
                  const CardRankMemberWidget(position: 4),
                  const CardRankMemberWidget(position: 5),
                  const CardRankMemberWidget(position: 6),
                  const CardRankMemberWidget(position: 7),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
