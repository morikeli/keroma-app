import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/components/grocery_card_discount_banner.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/components/grocery_card_footer.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/components/grocery_card_image.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/components/grocery_card_subtitle.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/components/grocery_card_title.dart';


class GroceryCard extends StatelessWidget {
  const GroceryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.grey.shade300.withOpacity(.4)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GroceryCardDiscountBanner(),
          GroceryCardImageWidget(),
          GroceryCardTitleWidget(),
          GroceryCardSubtitleWidget(),
          GroceryCardFooter(),
        ],
      ),
    );
  }
}
