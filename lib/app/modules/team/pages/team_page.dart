import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/modules/home/components/user-information_widget.dart';
import 'package:peter_space/app/modules/home/shared/stores/home_store.dart';
import 'package:peter_space/app/modules/team/components/card-rank-member_widget.dart';
import 'package:peter_space/app/modules/team/components/rank-winner_widget.dart';
import 'package:peter_space/app/shared/components/navegation_bar_widget.dart';
import 'package:peter_space/app/shared/components/simple-badge_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class TeamPage extends StatefulWidget {
  final String title;
  const TeamPage({Key? key, this.title = 'TeamPage'}) : super(key: key);
  @override
  TeamPageState createState() => TeamPageState();
}

class TeamPageState extends State<TeamPage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
    store.initStore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.chevronLeft, color: Colors.black),
          onPressed: () {
            Modular.to.navigate('/home');
          },
        ),
      ),
      bottomNavigationBar: const NavegationBarWidget(index: 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.topCenter),
              ),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RankWinnerWidget(),
                      ],
                    ),
                    CardRankMemberWidget(position: 1),
                    CardRankMemberWidget(position: 2),
                    CardRankMemberWidget(position: 3),
                    CardRankMemberWidget(position: 4),
                    CardRankMemberWidget(position: 5),
                    CardRankMemberWidget(position: 6),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
