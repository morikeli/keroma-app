import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class HomepageHeader extends StatelessWidget {
  const HomepageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: kPrimaryColor),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello there! 😃 \nLet us search your grocery food",
                style: TextStyle(color: kTextLightColor),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/imgs/user.jpg'),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search your daily grocery food',
                hintStyle: TextStyle(color: kHintTextandPrefixIconColor),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: kHintTextandPrefixIconColor
              ),
            ),
          )
        ],
      ),
    );
  }
}