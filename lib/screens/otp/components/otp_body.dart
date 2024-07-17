import 'package:flutter/material.dart';
import 'package:grocery_app/screens/otp/components/otp_form.dart';
import 'package:grocery_app/screens/otp/components/widgets/otp_body/otp_screen_title_widget.dart';
import 'package:grocery_app/screens/otp/components/widgets/otp_body/otp_timer_expiration_widget.dart';
import 'package:grocery_app/screens/otp/components/widgets/otp_body/resend_otp_code_widget.dart';


class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              const OTPScreenTitleWidget(),
              const Text("We've sent code to +254112 *** 678"),
              const OTPScreenCodeExpirationTimerWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              const OtpForm(),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              const ResendOTPCodeTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

