import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/screens/login/login.dart';
import 'package:flutter/material.dart';


class GetStartedButton extends StatefulWidget {
  const GetStartedButton({super.key});

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kPrimaryColor,
      ),
      height: 55,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, LoginScreen.routeName), 
        child: const Text(
          'Get started',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ),
    );
  }
}
