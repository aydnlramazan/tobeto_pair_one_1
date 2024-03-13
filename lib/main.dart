import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one_1/firebase_options.dart';
import 'package:tobeto_pair_one_1/screens/on_boarding_screen.dart';
import 'package:tobeto_pair_one_1/screens/start_screen.dart';
import 'package:tobeto_pair_one_1/widget/check_first_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  bool isFirstLogin = await checkFirstLogin();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            FirebaseAuth.instance,
            FirebaseFirestore.instance,
          ),
        ),
      ],
      child: MaterialApp(
        home: isFirstLogin ? const OnBoardingScreen() : const StartScreen(),
      ),
    ),
  );
}
