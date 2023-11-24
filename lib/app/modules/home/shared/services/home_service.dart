import 'package:peter_space/app/modules/home/shared/models/lesson.dart';
import 'package:peter_space/app/modules/home/shared/repository/home_repository.dart';

class HomeService {
  final HomeRepository repository;
  HomeService(this.repository);

  Future<LessonsModel> onListLessons() async {
    return await repository.findOpenedLessons();
  }
}
