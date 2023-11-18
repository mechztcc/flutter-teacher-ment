import 'package:flutter/material.dart';

class SocialGoogleButtonWidget extends StatelessWidget {
  final String title;
  const SocialGoogleButtonWidget(
      {Key? key, this.title = "SocialGoogleButtonWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(12),
          side: const BorderSide(
            color: Colors.grey,
          ),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.facebook, color: Colors.red.shade400),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Continue with Facebook',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
