import 'package:flutter/material.dart';
import 'package:grocery_app/screens/login/components/login_form.dart';
import 'package:grocery_app/screens/login/components/widgets/login_screen_header.dart';
import 'package:grocery_app/screens/login/components/widgets/login_screen_subtitle.dart';
import 'package:grocery_app/screens/login/components/widgets/signup_option.dart';


class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                const LoginScreenHeader(),
                const LoginScreenSubtitleWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * .08),
                const LoginForm(),
                SizedBox(height: MediaQuery.of(context).size.height * .08),
                const LoginScreenSignupOptionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

