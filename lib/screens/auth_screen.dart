import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/widget/login_form.dart';
import 'package:tobeto_pair_one_1/widget/register_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    Widget formWidget = _isLogin ? const LoginForm() : const RegisterForm();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formWidget,
            TextButton(
              onPressed: () {
                setState(() {
                  _isLogin = !_isLogin;
                });
              },
              child: Text(_isLogin ? " Yeni Kayıt Oluştur" : "Hemen Giriş Yap"),
            ),
          ],
        ),
      ),
    );
  }
}
