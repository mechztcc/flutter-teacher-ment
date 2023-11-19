import 'package:peter_space/app/modules/auth/models/login.dart';
import 'package:peter_space/app/modules/auth/repository/auth_repository.dart';

class AuthService {
  final AuthRepository repository;

  AuthService(this.repository);

  Future<LoginModel> onLogin(Map<String, dynamic> payload) async {
    return await repository.onLogin(payload);
  }
}
