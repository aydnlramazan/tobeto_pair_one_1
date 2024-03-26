import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/on_boarding_screen.dart';
import 'package:tobeto_pair_one_1/screens/start_screen.dart';
import 'package:tobeto_pair_one_1/widget/check_first_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // İlk olarak Splash Screen'i göster
    Timer.run(() {
      _checkFirstLoginAfterDelay();
    });
  }

  // 3 saniye bekleyip sonra checkFirstLogin işlemini gerçekleştir
  void _checkFirstLoginAfterDelay() {
    Timer(Duration(seconds: 3), () async {
      bool isFirstLogin = await checkFirstLogin();
      _navigateToNextScreen(isFirstLogin);
    });
  }

  // Giriş durumuna göre uygun sayfaya yönlendirme yap
  void _navigateToNextScreen(bool isFirstLogin) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>
            isFirstLogin ? const OnBoardingScreen() : const StartScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
