import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/shared/components/input-text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/styles/font_style.dart';

class FormCreateAccountWidget extends StatelessWidget {
  final String title;
  const FormCreateAccountWidget(
      {Key? key, this.title = "FormCreateAccountWidget"})
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
            Text(
              'Create account',
              style: FontStyle().header(),
            ),
            Text(
              'its easy, just take a minute and provided details',
              style: FontStyle().span(),
            ),
            const SizedBox(
              height: 20,
            ),
            InputTextWidget(
              label: 'Name',
              prependIcon: const Icon(Icons.person),
              obscure: false,
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
            const PrimaryButtonWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already registered?',
                  ),
                  GestureDetector(
                    onTap: () {
                      Modular.to.navigate('/auth/login');
                    },
                    child: Text(
                      ' Login',
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
