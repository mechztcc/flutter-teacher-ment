import 'package:dio/dio.dart';
import 'package:peter_space/app/modules/auth/models/login.dart';

class AuthRepository {
  final Dio dio = Dio();
  final String url = 'http://192.168.1.12:3000/auth';

  Future<LoginModel> onLogin(Map<String, dynamic> payload) async {
    var response = await dio.post(url, data: payload);
    return LoginModel.fromJson(response.data);
  }
}
