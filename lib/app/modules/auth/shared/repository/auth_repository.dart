import 'package:peter_space/app/modules/auth/shared/models/login.dart';
import 'package:peter_space/app/shared/services/http_service.dart';

class AuthRepository {
  final HttpService http;
  final String url = 'http://192.168.1.12:3000/auth';

  AuthRepository(this.http);

  Future<LoginModel> onLogin(Map<String, dynamic> payload) async {
    var response = await http.post(path: 'auth', payload: payload);
    print(response);
    return LoginModel.fromJson(response.data);
  }
}
