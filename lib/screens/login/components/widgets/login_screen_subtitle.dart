import 'package:flutter/material.dart';


class LoginScreenSubtitleWidget extends StatelessWidget {
  const LoginScreenSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login using your email and password', 
      textAlign: TextAlign.center,
    );
  }
}
