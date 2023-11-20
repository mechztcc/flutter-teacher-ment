import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    colorAnimation =
        ColorTween(begin: Colors.purple, end: Colors.blue).animate(controller);
    sizeAnimation = Tween<double>(begin: 20.0, end: 60.0).animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });

    Future.delayed(const Duration(seconds: 3)).then(
      (_) => {Modular.to.navigate('/auth/create-account')},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Modular.to.navigate('/auth/create-account');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'PETER.',
                    style: GoogleFonts.vinaSans(
                      fontSize: sizeAnimation.value,
                      color: Colors.blue,
                      height: 0.1,
                    ),
                  ),
                  Text(
                    'SPACE',
                    style: GoogleFonts.vinaSans(
                      fontSize: sizeAnimation.value,
                      color: Colors.purple.shade300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
