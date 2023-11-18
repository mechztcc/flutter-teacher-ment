import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/shared/components/input-text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class FormLoginWidget extends StatelessWidget {
  final String title;
  const FormLoginWidget({Key? key, this.title = "FormLoginWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Login into your account',
              style: FontStyle().header(),
            ),
            const SizedBox(
              height: 20,
            ),
            InputTextWidget(
              label: 'Email',
              prependIcon: const Icon(Icons.email),
              obscure: false,
            ),
            InputTextWidget(
              label: 'Password',
              prependIcon: const Icon(Icons.lock),
              obscure: true,
              type: 'password',
            ),
            const PrimaryButtonWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do not have account?',
                  ),
                  GestureDetector(
                    onTap: () {
                      Modular.to.navigate('/auth/create-account');
                    },
                    child: Text(
                      ' Register',
                      style: TextStyle(color: Colors.blue.shade400),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
