import 'package:flutter_modular/flutter_modular.dart';
import 'package:peter_space/app/modules/question/pages/question_page.dart';

class QuestionModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:id',
      child: (_, args) => QuestionPage(
        id: args.params['id'],
      ),
    ),
  ];
}
