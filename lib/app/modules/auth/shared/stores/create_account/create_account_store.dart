import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:peter_space/app/modules/auth/shared/models/create_account.dart';
import 'package:peter_space/app/modules/auth/shared/services/auth_service.dart';
import 'package:peter_space/app/shared/services/alerts_service.dart';

part 'create_account_store.g.dart';

class CreateAccountStore = _CreateAccountStoreBase with _$CreateAccountStore;

abstract class _CreateAccountStoreBase with Store {
  final AuthService authService;
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  CreateAccountModel? user;

  AlertsService alert = Modular.get();

  @observable
  bool isloading = false;

  _CreateAccountStoreBase(this.authService);

  onValidateForm(BuildContext context) {
    var isValid = formKey.currentState?.validate();
    if (isValid ?? false) {
      onSubmit(context);
    }
  }

  @action
  Future<void> onSubmit(context) async {
    isloading = true;
    try {
      Map<String, dynamic> payload = {
        "email": emailEC.text,
        "password": passwordEC.text,
        "name": nameEC.text,
        "role": "STUDENT",
      };
      user = await authService.onCreateAccount(payload);
      alert.success(context, 'Account Created With Sucess!');

      Modular.to.navigate('/auth/login');
    } on DioException catch (e) {
      alert.error(e, context);
      rethrow;
    } finally {
      isloading = false;
    }
  }
}
