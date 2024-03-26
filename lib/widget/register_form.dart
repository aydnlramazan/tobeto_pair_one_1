import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_event.dart';
import 'package:tobeto_pair_one_1/screens/auth_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _username = '';
  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read<AuthBloc>().add(
            Register(email: _email, password: _password, username: _username),
          );
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Kayıt işlemi başarılı"),
        duration: Duration(seconds: 2),
      ));

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
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
            decoration: const InputDecoration(labelText: 'Kullanıcı Adı'),
            keyboardType: TextInputType.text,
            onSaved: (value) => _username = value!,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Lütfen bir kullanıcı adı giriniz.';
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
            child: const Text('Kayıt Ol'),
          ),
        ],
      ),
    );
  }
}
