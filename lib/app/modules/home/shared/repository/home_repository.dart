import 'package:peter_space/app/modules/home/shared/models/lesson.dart';
import 'package:peter_space/app/shared/services/http_service.dart';

class HomeRepository {
  final HttpService http;
  final String url = 'http://192.168.1.12:3000/';

  HomeRepository(this.http);

  Future<LessonsModel> findOpenedLessons() async {
    var response = await http.get(path: 'lessons/student/find-by-user');

    var data = LessonsModel.fromJson(response.data);
    return data;
  }
}
