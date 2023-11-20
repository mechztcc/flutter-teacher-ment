import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AlertsService {
  error(DioException e, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(e.response!.data['message']),
        showCloseIcon: true,
      ),
    );
  }

  success(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue.shade400,
        content: Text(msg),
        showCloseIcon: true,
      ),
    );
  }
}
