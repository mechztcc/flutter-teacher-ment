import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:peter_space/app/modules/auth/models/login.dart';
import 'package:peter_space/app/modules/auth/services/auth_service.dart';
import 'package:peter_space/app/shared/services/alerts_service.dart';
import 'package:peter_space/app/shared/services/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final AuthService authService;
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  bool isloading = false;

  LoginModel? loginData;

  LoginStoreBase(this.authService);

  AlertsService alert = Modular.get();

  @observable
  int value = 0;

  @action
  Future<void> onLogin(context) async {
    try {
      Map<String, dynamic> payload = {
        "email": emailEC.text,
        "password": passwordEC.text
      };
      loginData = await authService.onLogin(payload);
      alert.success(context, 'Login Sucess!');
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('name', loginData!.user!.name!);
      prefs.setString('email', loginData!.user!.email!);
      prefs.setString('token', loginData!.user!.token!);
    } on DioException catch (e) {
      alert.error(e, context);
      rethrow;
    }
  }
}
