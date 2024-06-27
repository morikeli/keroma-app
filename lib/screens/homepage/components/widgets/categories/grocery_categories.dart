import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class GroceryCategories extends StatelessWidget {
  final String categoryName, imagePath;
  const GroceryCategories({
    super.key,
    required this.categoryName,
    required this.imagePath,
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
              child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.045),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(imagePath),
                ),
            ),
            Text(
              categoryName,
              style: const TextStyle(
                color: kTextDarkColor,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }
}
