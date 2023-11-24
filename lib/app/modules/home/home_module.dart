import 'package:peter_space/app/modules/home/shared/services/home_service.dart';
import 'package:peter_space/app/modules/home/shared/repository/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/team/shared/stores/join_team_store.dart';
import 'package:peter_space/app/shared/services/http_service.dart';
import './shared/stores/home_store.dart';

import 'pages/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeService(i())),
    Bind.lazySingleton((i) => HomeRepository(i())),
    Bind.lazySingleton((i) => HomeStore(i())),
    Bind.lazySingleton((i) => JoinTeamStore(i())),
    Bind.lazySingleton((i) => HttpService())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];
}
