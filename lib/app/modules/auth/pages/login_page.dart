import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/auth/components/form_login_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  final String title;

  LoginPage({
    Key? key,
    this.title = 'LoginPage',
  }) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    _prefs.then((prefs) => prefs.clear());
  }

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
