import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/home/shared/stores/home_store.dart';
import 'package:peter_space/app/modules/team/pages/team_page.dart';

class TeamModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TeamPage()),
  ];
  @override
  List<Module> get imports => [];
}
