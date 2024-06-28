import 'package:flutter/material.dart';


class HomepageHeader extends StatefulWidget {
  const HomepageHeader({
    super.key,
  });

  @override
  State<HomepageHeader> createState() => _HomepageHeaderState();
}

class _HomepageHeaderState extends State<HomepageHeader> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text.rich(
          TextSpan(
            text: 'Hello Olivia\n',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
            children: [
              TextSpan(
                text: "It's cooking time. Find fresh food!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal
                ),
              )
            ]
          ),
        )
      ],
    );
  }
}