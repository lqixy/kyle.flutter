import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  storeUser(user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user', user);
  }

  getUser(user) async {}
}
