import 'package:flutter/material.dart';


class OnboardingScreenContent extends StatelessWidget {
  const OnboardingScreenContent({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });
  final String title, description, imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 350.0, fit: BoxFit.contain), // image
        const SizedBox(height: 5.0),
        
        // title
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        // description
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}