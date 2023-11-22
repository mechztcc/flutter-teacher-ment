import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:peter_space/app/modules/team/shared/services/team_service.dart';
import 'package:peter_space/app/shared/services/alerts_service.dart';

part 'join_team_store.g.dart';

class JoinTeamStore = JoinTeamStoreBase with _$JoinTeamStore;

abstract class JoinTeamStoreBase with Store {
  final codeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final TeamService teamService;

  AlertsService alert = Modular.get();

  JoinTeamStoreBase(this.teamService);

  @observable
  bool isLoading = false;

  @action
  Future<void> onJoinWithCode(BuildContext context) async {
    try {
      isLoading = true;
      var isValid = formKey.currentState?.validate() ?? false;

      print(isValid);
      if (isValid) {
        await teamService.onJoinWithCode(codeEC.text);
      }
    } on DioException catch (e) {
      alert.error(e, context);
      rethrow;
    } finally {
      isLoading = false;
    }
  }
}
