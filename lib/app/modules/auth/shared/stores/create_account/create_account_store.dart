import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:peter_space/app/modules/auth/shared/services/auth_service.dart';

part 'create_account_store.g.dart';

class CreateAccountStore = _CreateAccountStoreBase with _$CreateAccountStore;

abstract class _CreateAccountStoreBase with Store {
  final AuthService authService;
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @observable
  bool isloading = false;

  _CreateAccountStoreBase(this.authService);

  onValidateForm() {
    isloading = true;
    var isValid = formKey.currentState?.validate();
    if (isValid ?? false) {}
  }
}
