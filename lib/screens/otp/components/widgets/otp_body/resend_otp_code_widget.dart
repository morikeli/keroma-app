import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class ResendOTPCodeTextWidget extends StatelessWidget {
  const ResendOTPCodeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Didn't get the code? ",
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Resend OTP code',
            style: TextStyle(
              color: kPrimaryColor,
              decoration: TextDecoration.underline,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}