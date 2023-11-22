import 'package:peter_space/app/shared/services/http_service.dart';

class TeamRepository {
  final HttpService http;
  final String url = 'http://192.168.1.12:3000/teams';

  TeamRepository(this.http);

  Future<void> onJoinTeam(String code) async {
    var response = await http.post(payload: {}, path: 'teams/join/$code');
    return response;
  }
}
