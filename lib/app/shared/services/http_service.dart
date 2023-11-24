import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  final Dio dio = Dio();
  final String url = 'http://192.168.1.12:3000';

  get({required String path}) async {
    final prefs = await SharedPreferences.getInstance();
    dio.options.headers["authorization"] = "${prefs.getString('token')}";
    return await dio.get('$url/$path');
  }

  post({required Map<String, dynamic> payload, required String path}) async {
    final prefs = await SharedPreferences.getInstance();
    dio.options.headers["authorization"] = "${prefs.getString('token')}";

    return await dio.post('$url/$path', data: payload);
  }
}
