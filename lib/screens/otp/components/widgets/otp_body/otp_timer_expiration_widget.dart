import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class OTPScreenCodeExpirationTimerWidget extends StatelessWidget {
  const OTPScreenCodeExpirationTimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expire in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0), 
          duration: const Duration(seconds: 30), 
          builder: (context, value, child) => Text(
            '00:${value.toInt().toString().padLeft(2, '0')}',
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          )
        ),
      ],
    );
  }
}
