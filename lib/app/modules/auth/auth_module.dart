import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/auth/pages/create-account_page.dart';
import 'package:peter_space/app/modules/auth/pages/login_page.dart';
import 'package:peter_space/app/modules/auth/shared/repository/auth_repository.dart';
import 'package:peter_space/app/modules/auth/shared/services/auth_service.dart';
import 'package:peter_space/app/modules/auth/shared/stores/create_account/create_account_store.dart';
import 'package:peter_space/app/modules/auth/shared/stores/login/login_store.dart';
import 'package:peter_space/app/shared/services/http_service.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CreateAccountStore(i())),
    Bind.lazySingleton((i) => LoginStore(i())),
    Bind.lazySingleton((i) => AuthService(i())),
    Bind.lazySingleton((i) => AuthRepository(i())),
    Bind.lazySingleton((i) => HttpService())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/create-account',
        child: (_, args) => const CreateAccountPage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
  ];

  @override
  List<Module> get imports => [];
}
