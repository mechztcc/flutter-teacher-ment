import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peter_space/app/modules/auth/shared/stores/login/login_store.dart';
import 'package:peter_space/app/shared/components/input_text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';
import 'package:validatorless/validatorless.dart';

class FormLoginWidget extends StatefulWidget {
  final String title;
  const FormLoginWidget({Key? key, this.title = "FormLoginWidget"})
      : super(key: key);

  @override
  State<FormLoginWidget> createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  late final LoginStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<LoginStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        width: MediaQuery.of(context).size.width * .9,
        child: Form(
          key: store.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome back',
                style: FontStyle().header(),
              ),
              const SizedBox(
                height: 50,
              ),
              InputTextWidget(
                label: 'Email',
                prependIcon: const Icon(Icons.email),
                obscure: false,
                controller: store.emailEC,
                validator: Validatorless.multiple([
                  Validatorless.required('Email is required'),
                  Validatorless.email('Email invalid')
                ]),
              ),
              InputTextWidget(
                label: 'Password',
                prependIcon: const Icon(Icons.lock),
                obscure: true,
                type: 'password',
                controller: store.passwordEC,
                validator: Validatorless.multiple([
                  Validatorless.required('Name is required'),
                  Validatorless.min(6, 'Password must be has min 6 characteres')
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Observer(
                builder: (context) => PrimaryButtonWidget(
                  onPress: () {
                    store.onValidateForm(context);
                  },
                  type: 'primary',
                  isLoading: store.isloading,
                  label: 'Login',
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do not have account?',
                      style: GoogleFonts.rajdhani(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Modular.to.navigate('/auth/create-account');
                      },
                      child: Text(
                        ' Register',
                        style:
                            GoogleFonts.rajdhani(color: Colors.blue.shade400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
