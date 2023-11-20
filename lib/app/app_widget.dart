import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      navigatorKey: navigatorKey,
    );
    return MaterialApp.router(
      title: 'Flutter Slidy',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
