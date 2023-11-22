import 'package:flutter/material.dart';

class EnterWithCodeWidget extends StatelessWidget {
  final String title;
  const EnterWithCodeWidget({Key? key, this.title = "EnterWithCodeWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(title));
  }
}