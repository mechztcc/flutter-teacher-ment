import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/team/shared/stores/join_team_store.dart';
import './shared/stores/home_store.dart';

import 'pages/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => JoinTeamStore(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];
}
