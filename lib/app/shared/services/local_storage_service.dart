import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  late SharedPreferences prefs;

  setItem() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('opaaa', 'legal');

    print(prefs.getString('opaaa'));
  }
}
