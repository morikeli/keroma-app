import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class ProductPriceandAddToCartWidget extends StatelessWidget {
  const ProductPriceandAddToCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text.rich(
          TextSpan(
            text: 'Total price\n',
            style: TextStyle(color: kTextGreyColor),
            children: [
              TextSpan(
                text: '\$10.00',
                style: TextStyle(
                  color: kTextDarkColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: kPrimaryColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Add to cart',
              style: TextStyle(color: kTextLightColor),
            ),
          ),
        )
      ],
    );
  }
}
