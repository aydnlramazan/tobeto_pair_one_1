import 'package:shared_preferences/shared_preferences.dart';

Future<bool> checkFirstLogin() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool isFirstLogin = pref.getBool('first_login') ?? true;

  if (isFirstLogin) {
    await pref.setBool('first_login', false);
  }
  return isFirstLogin;
}
