import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_event.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_state.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      BlocProvider.of<AuthBloc>(context)
          .add(Login(email: _email, password: _password));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          // Authenticated state olduğunda yapılacak işlemler
        } else if (state is NotAuthenticated) {
          // NotAuthenticated state olduğunda yapılacak işlemler
        }
      },
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'E-posta'),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => _email = value!,
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Lütfen geçerli bir e-posta adresi giriniz.';
                }

                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Şifre'),
              obscureText: true,
              onSaved: (value) => _password = value!,
              validator: (value) {
                if (value!.isEmpty || value.length < 8) {
                  return 'Şifre en az 8 karakter uzunluğunda olmalıdır.';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
