import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/models/categories.dart';
import 'package:grocery_app/screens/homepage/components/widgets/categories/grocery_categories.dart';


class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
          horizontal: 10.0, vertical: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: kTextDarkColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: kPrimaryColor),
                )
              ],
            ),
            const Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    categories.length,
                    (index) {
                      return GroceryCategories(
                        categoryName: categories[index].categoryName,
                        imagePath: categories[index].imagePath,
                      );
                    } 
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}