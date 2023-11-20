import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/auth/shared/stores/create_account/create_account_store.dart';
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
  late final CreateAccountStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<CreateAccountStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 239, 243, 249),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 210, 212, 217),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: double.infinity,
        child: Form(
          key: store.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                controller: store.nameEC,
                validator: Validatorless.required('Name is required'),
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
                  Validatorless.required('Password is required'),
                  Validatorless.min(6, 'Password required min 6 characters')
                ]),
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
              Observer(
                builder: (context) => PrimaryButtonWidget(
                  onPress: () {
                    store.onValidateForm(context);
                  },
                  type: 'primary',
                  isLoading: store.isloading,
                  label: 'Create Account',
                ),
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
