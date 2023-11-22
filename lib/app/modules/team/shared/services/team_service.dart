import 'package:peter_space/app/modules/team/shared/repository/team_repository.dart';

class TeamService {
  final TeamRepository repository;

  TeamService(this.repository);

  Future<void> onJoinWithCode(String code) async {
    return await repository.onJoinTeam(code);
  }
}
