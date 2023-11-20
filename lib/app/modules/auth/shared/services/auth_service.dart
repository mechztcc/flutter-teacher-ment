import 'package:peter_space/app/modules/auth/shared/models/create_account.dart';
import 'package:peter_space/app/modules/auth/shared/models/login.dart';
import 'package:peter_space/app/modules/auth/shared/repository/auth_repository.dart';

class AuthService {
  final AuthRepository repository;

  AuthService(this.repository);

  Future<LoginModel> onLogin(Map<String, dynamic> payload) async {
    return await repository.onLogin(payload);
  }

  Future<CreateAccountModel> onCreateAccount(
      Map<String, dynamic> payload) async {
    return await repository.onCreateAccount(payload);
  }
}
