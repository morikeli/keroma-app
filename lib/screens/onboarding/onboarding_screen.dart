import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboarding/components/onboarding_body.dart';


class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingScreenBody(),
    );
  }
}