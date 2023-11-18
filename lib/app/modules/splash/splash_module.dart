import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/splash/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
  ];
}
