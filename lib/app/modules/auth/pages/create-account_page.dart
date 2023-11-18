import 'package:flutter/material.dart';
import 'package:peter_space/app/modules/auth/components/form-create-account_widget.dart';

class CreateAccountPage extends StatefulWidget {
  final String title;
  const CreateAccountPage({Key? key, this.title = 'CreateAccountPage'})
      : super(key: key);
  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height,
            child: const Expanded(
              child: Column(
                children: <Widget>[FormCreateAccountWidget()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
