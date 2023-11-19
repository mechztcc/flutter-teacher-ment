import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/auth/auth_module.dart';
import 'package:peter_space/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/auth', module: AuthModule()),
  ];
}
