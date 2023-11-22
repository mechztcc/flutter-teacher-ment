import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peter_space/app/modules/team/shared/stores/join_team_store.dart';
import 'package:peter_space/app/shared/components/input_text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';
import 'package:validatorless/validatorless.dart';

class EnterWithCodeWidget extends StatefulWidget {
  final String title;
  const EnterWithCodeWidget({Key? key, this.title = "EnterWithCodeWidget"})
      : super(key: key);

  @override
  State<EnterWithCodeWidget> createState() => _EnterWithCodeWidgetState();
}

class _EnterWithCodeWidgetState extends State<EnterWithCodeWidget> {
  late final JoinTeamStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<JoinTeamStore>();
  }

  @override
  Widget build(BuildContext context) {
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
          Form(
            key: store.formKey,
            child: InputTextWidget(
              label: 'Código',
              prependIcon: const Icon(FontAwesomeIcons.code),
              obscure: false,
              controller: store.codeEC,
              validator: Validatorless.required('Código inválido'),
            ),
          ),
          Observer(
            builder: (context) => PrimaryButtonWidget(
              onPress: () {
                store.onJoinWithCode(context);
              },
              isLoading: store.isLoading,
              label: 'Enviar',
              type: 'purple',
            ),
          ),
        ],
      ),
    );
  }
}
