import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/screens/homepage/components/widgets/banners/ad_banner.dart';
import 'package:grocery_app/screens/homepage/components/widgets/banners/discount_banner.dart';


class DiscountandAdBanners extends StatelessWidget {
  const DiscountandAdBanners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DiscountBanner(
          bannerColor: kPrimaryColor.withOpacity(.1),
          bannerImage: 'assets/imgs/fruits/orange.png',
          headlineLarge: '30% discount',
          headlineSmall: 'Order any food via the app \nand get the discounts',
        ),
        AdBanner(
          bannerColor: kFruitsBannerColor.withOpacity(.7),
          bannerImage: 'assets/imgs/juice/grape-juice.png',
          headlineLarge: 'Juice',
          headlineSmall: 'Buy blended fruit juice and \nsmoothies at available prices',
          textColor: Colors.orange,
        ),
        AdBanner(
          bannerColor: const Color(0xFFBDBDBD).withOpacity(.5),
          bannerImage: 'assets/imgs/veggies/cauliflower.png',
          headlineLarge: 'Organic food',
          headlineSmall: 'A variety of fruits, juice and \nvegetables to choose from. \nShop with us today! 😎',
        ),

      ],
    );
  }
}
