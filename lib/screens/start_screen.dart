import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_state.dart';
import 'package:tobeto_pair_one_1/screens/auth_screen.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is Authenticated) return FirstOne();
      return const AuthScreen();
    });
  }
}
