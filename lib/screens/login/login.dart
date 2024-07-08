import 'package:flutter/material.dart';
import 'package:grocery_app/screens/login/components/login_body.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: const LoginScreenBody(),
    );
  }
}