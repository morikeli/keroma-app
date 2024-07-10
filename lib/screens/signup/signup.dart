import 'package:flutter/material.dart';
import 'package:grocery_app/screens/signup/signup_body.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: const SignupScreenBody(),
    );
  }
}
