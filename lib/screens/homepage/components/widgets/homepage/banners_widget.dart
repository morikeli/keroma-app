import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/components/widgets/discount_and_ad_banners.dart';


class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DiscountandAdBanners()
        ],
      ),
    );
  }
}
