import 'package:flutter/material.dart';


class GroceryCardTitleWidget extends StatelessWidget {
  const GroceryCardTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        'Orange',
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
