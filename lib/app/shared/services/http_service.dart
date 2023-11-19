import 'dart:convert';
import 'package:dio/dio.dart';

class HttpService {
  final Dio dio = Dio();
  final String url = 'http://192.168.1.12:3000/auth';

  get({required String path}) async {
    var response = await dio.get(path);
    return jsonDecode(response.data);
  }

  post({required Map<String, dynamic> payload, required String path}) async {
    var response = await dio.post(path);
    return jsonDecode(response.data);
  }
}
