import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peter_space/app/shared/components/input-text_widget.dart';
import 'package:peter_space/app/shared/components/primary-button_widget.dart';
import 'package:peter_space/app/shared/components/social-google-button_widget.dart';
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
            Text(
              'Create your account',
              style: FontStyle().header(),
            ),
            Text(
              'its easy, just take a minute and provided details',
              style: FontStyle().span(),
            ),
            const SocialGoogleButtonWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Or'),
                ),
                Expanded(child: Divider()),
              ],
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
                    color: Colors.green.shade400,
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
                      Modular.to.navigate('/login');
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
