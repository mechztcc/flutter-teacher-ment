import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:peter_space/app/modules/auth/models/login.dart';
import 'package:peter_space/app/modules/auth/services/auth_service.dart';

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
    } on DioException catch (e) {
      print('deu erro ${e.response!.data['message']}');
      var snackBar = SnackBar(
        content: Text(e.response!.statusMessage!),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      throw (e);
    }
  }
}
