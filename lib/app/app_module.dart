import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/auth/auth_module.dart';
import 'package:peter_space/app/modules/home/home_module.dart';
import 'package:peter_space/app/modules/splash/splash_module.dart';
import 'package:peter_space/app/modules/team/team_module.dart';
import 'package:peter_space/app/shared/services/alerts_service.dart';
import 'package:peter_space/app/shared/services/local_storage_service.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LocalStorageService()),
    Bind.lazySingleton((i) => AlertsService()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/team', module: TeamModule()),
  ];
}
