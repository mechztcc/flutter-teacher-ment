import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/auth/components/form-login_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[FormLoginWidget()],
            ),
          ),
        ),
      ),
    );
  }
}
