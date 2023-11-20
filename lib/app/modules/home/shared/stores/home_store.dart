import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @observable
  int counter = 0;

  @observable
  String? name;

  @action
  initStore() {
    _prefs.then((prefs) => {name = prefs.getString('name')});
  }

  Future<void> increment() async {
    counter = counter + 1;
  }
}
