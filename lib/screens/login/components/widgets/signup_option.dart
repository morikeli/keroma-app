import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/screens/signup/signup.dart';


class LoginScreenSignupOptionWidget extends StatelessWidget {
  const LoginScreenSignupOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?", style: TextStyle(fontSize: 16.0)),
        const SizedBox(width: 5.0),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, SignupScreen.routeName),
          child: const Text(
            'Sign up', 
            style: TextStyle(
              color: kPrimaryColor, 
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}