import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class ProductScreenAdditionalInfoWidget extends StatelessWidget {
  const ProductScreenAdditionalInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // rating icon
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text.rich(
              TextSpan(
                text: '4.9 ',
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '(2891)',
                    style: TextStyle(
                      color: kTextGreyColor, fontWeight: FontWeight.normal,
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // calories icon
        Row(
          children: [
            Icon(Icons.whatshot, color: kPrimaryColor),
            Text(
              '90 Cal',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),

        // delivery icon
        Row(
          children: [
            Icon(Icons.airport_shuttle, color: Colors.brown),
            Text(
              '30 min',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
