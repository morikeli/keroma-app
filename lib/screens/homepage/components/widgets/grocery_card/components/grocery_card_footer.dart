import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class GroceryCardFooter extends StatelessWidget {
  const GroceryCardFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            '\$100.00/kg',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(15.0)),
          ),
          padding: const EdgeInsets.all(5.0),
          child: const Icon(Icons.shopping_bag, color: kIconLightColor),
        ),
      ],
    );
  }
}
