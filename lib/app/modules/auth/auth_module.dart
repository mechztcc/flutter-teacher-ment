import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/auth/pages/create-account_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/create-account', child: (_, args) => CreateAccountPage())
  ];
}
