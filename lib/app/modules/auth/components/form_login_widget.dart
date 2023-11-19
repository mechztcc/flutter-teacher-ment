import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peter_space/app/modules/auth/stores/login_store.dart';
import 'package:peter_space/app/shared/components/input-text_widget.dart';
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
    onValidateForm() async {
      var isValid = store.formKey.currentState?.validate() ?? false;

      if (!isValid) {
        return;
      }
      store.onLogin(context);
    }

    return SizedBox(
        width: double.infinity,
        child: Form(
          key: store.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome back',
                style: FontStyle().header(),
              ),
              Text(
                'Please, tap your details',
                style: FontStyle().span(),
              ),
              const SizedBox(
                height: 20,
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
                validator: Validatorless.required('Name is required'),
              ),
              PrimaryButtonWidget(
                onPress: onValidateForm,
                isLoading: store.isloading,
                label: 'Login',
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
