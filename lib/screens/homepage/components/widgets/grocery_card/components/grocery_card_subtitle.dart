import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class GroceryCardSubtitleWidget extends StatelessWidget {
  const GroceryCardSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        'Fruit',
        style: TextStyle(
          color: kTextGreyColor,
        ),
      ),
    );
  }
}
