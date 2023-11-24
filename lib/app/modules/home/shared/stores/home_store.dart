import 'package:mobx/mobx.dart';
import 'package:peter_space/app/modules/home/shared/models/lesson.dart';
import 'package:peter_space/app/modules/home/shared/services/home_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final HomeService service;

  @observable
  List<Lessons>? lessons;

  HomeStoreBase(this.service);

  @observable
  String? name;

  @action
  initStore() {
    _prefs.then((prefs) => {name = prefs.getString('name')});
  }

  @action
  Future<void> listLessons() async {
    try {
      var data = await service.onListLessons();
      lessons = data.lessons;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
