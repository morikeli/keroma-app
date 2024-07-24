import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class PopularProductsWidget extends StatelessWidget {
  final String categoryName, imagePath;
  final double? price;

  const PopularProductsWidget({
    super.key,
    required this.categoryName,
    required this.imagePath,
    this.price = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              height: 100.0,
              width: 100.0,
              child: Image.asset(imagePath),
            ),
            Text(
              categoryName,
              style: const TextStyle(
                color: kTextDarkColor,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "${price!}0/=",
              style: const TextStyle(
                color: kTextDarkColor,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        const SizedBox(width: 15.0),
      ],
    );
  }
}
