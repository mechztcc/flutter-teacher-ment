import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/shared/components/input_text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';
import 'package:validatorless/validatorless.dart';

class EnterWithCodeWidget extends StatelessWidget {
  final String title;
  const EnterWithCodeWidget({Key? key, this.title = "EnterWithCodeWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeEC = TextEditingController();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 253, 223, 223),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Você ainda não possui um Time.',
            style: FontStyle().small(),
          ),
          Text(
            'Entre usando um Código de Convite.',
            style: FontStyle().small(),
          ),
          const SizedBox(
            height: 10,
          ),
          InputTextWidget(
            label: 'Código',
            prependIcon: Icon(FontAwesomeIcons.code),
            obscure: false,
            controller: codeEC,
            validator: Validatorless.required('Código inválido'),
          ),
        ],
      ),
    );
  }
}
