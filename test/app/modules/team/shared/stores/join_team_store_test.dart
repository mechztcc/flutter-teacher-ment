import 'package:flutter_test/flutter_test.dart';
import 'package:peter_space/app/modules/team/shared/stores/join_team_store.dart';
 
void main() {
  late JoinTeamStore store;

  setUpAll(() {
    store = JoinTeamStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}