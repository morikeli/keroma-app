import 'package:flutter/material.dart';


class LoginScreenHeader extends StatelessWidget {
  const LoginScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome back', 
      style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
    );
  }
}
