import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class GroceryCardDiscountBanner extends StatelessWidget {
  const GroceryCardDiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(10.0)),
            color: kPrimaryColor,
          ),
          padding: const EdgeInsets.all(5.0),
          child: const Text(
            '10% discount',
            style: TextStyle(
              color: kTextLightColor,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
