import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/auth/pages/create-account_page.dart';
import 'package:peter_space/app/modules/auth/pages/login_page.dart';
import 'package:peter_space/app/modules/auth/repository/auth_repository.dart';
import 'package:peter_space/app/modules/auth/services/auth_service.dart';
import 'package:peter_space/app/modules/auth/stores/login_store.dart';
import 'package:peter_space/app/modules/home/home_module.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore(i())),
    Bind.lazySingleton((i) => AuthService(i())),
    Bind.lazySingleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/create-account',
        child: (_, args) => const CreateAccountPage()),
    ChildRoute('/login', child: (_, args) => const LoginPage()),
  ];

  @override
  List<Module> get imports => [HomeModule()];
}
