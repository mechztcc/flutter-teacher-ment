import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpService {
  final Dio dio = Dio();
  final String url = 'http://192.168.1.12:3000';

  get({required String path}) async {
    return await dio.get(path);
  }

  post({required Map<String, dynamic> payload, required String path}) async {
    return await dio.post('$url/$path', data: payload);
  }
}
