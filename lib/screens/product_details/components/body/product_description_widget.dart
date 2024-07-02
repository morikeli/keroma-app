import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In, numquam omnis aspernatur illo tenetur beatae labore impedit eveniet, explicabo voluptates eaque sint qui odit error fugiat ex sunt asperiores quae.',
          style: TextStyle(
            color: kTextGreyColor,
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}
