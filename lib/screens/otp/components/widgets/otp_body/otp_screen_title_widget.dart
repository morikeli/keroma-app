import 'package:flutter/material.dart';


class OTPScreenTitleWidget extends StatelessWidget {
  const OTPScreenTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'OTP verification',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
        color: Colors.black,
      ),
    );
  }
}