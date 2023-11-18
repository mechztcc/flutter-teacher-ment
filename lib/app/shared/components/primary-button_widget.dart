import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  const PrimaryButtonWidget({Key? key, this.title = "PrimaryButtonWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 65,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade400,
          padding: const EdgeInsets.all(12),
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: const Text(
          'Create account',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
