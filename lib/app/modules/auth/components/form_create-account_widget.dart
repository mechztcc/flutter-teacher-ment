import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/shared/components/input-text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';
import 'package:validatorless/validatorless.dart';
import 'package:google_fonts/google_fonts.dart';

class FormCreateAccountWidget extends StatefulWidget {
  final String title;
  const FormCreateAccountWidget(
      {Key? key, this.title = "FormCreateAccountWidget"})
      : super(key: key);

  @override
  State<FormCreateAccountWidget> createState() =>
      _FormCreateAccountWidgetState();
}

class _FormCreateAccountWidgetState extends State<FormCreateAccountWidget> {
  final _formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  final isLoading = false;

  onValidateForm() {
    var isValid = _formKey.currentState?.validate();
    print(isValid);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
              ),
              Text(
                'Create account',
                style: FontStyle().header(),
              ),
              Text(
                'its easy, just take a minute and provided details',
                textAlign: TextAlign.center,
                style: FontStyle().span(),
              ),
              const SizedBox(
                height: 20,
              ),
              InputTextWidget(
                label: 'Name',
                prependIcon: const Icon(Icons.person),
                obscure: false,
                controller: nameEC,
                validator: Validatorless.required('Name is required'),
              ),
              InputTextWidget(
                label: 'Email',
                prependIcon: const Icon(Icons.email),
                obscure: false,
                controller: emailEC,
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
                controller: passwordEC,
                validator: Validatorless.required('Name is required'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: Colors.blue.shade400,
                    ),
                    Text(
                      'Yes, I understand and accept the terms of service',
                      style: FontStyle().small(),
                    ),
                  ],
                ),
              ),
              PrimaryButtonWidget(
                onPress: () {},
                isLoading: isLoading,
                label: 'Create Account',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already registered?',
                      style: GoogleFonts.rajdhani(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Modular.to.navigate('/auth/login');
                      },
                      child: Text(
                        ' Login',
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
