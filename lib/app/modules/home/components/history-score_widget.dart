import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/home/components/card-history_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class HistoryScoreWidget extends StatelessWidget {
  final String title;
  const HistoryScoreWidget({
    Key? key,
    this.title = "HistoryScoreWidget",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Desempenho',
            style: FontStyle().subtitle(),
          ),
          Text(
            'As atividades ficam disponíveis assim que o seu professor enviar.',
            style: FontStyle().small(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CardHistoryWidget(),
                CardHistoryWidget(),
                CardHistoryWidget(),
                CardHistoryWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
