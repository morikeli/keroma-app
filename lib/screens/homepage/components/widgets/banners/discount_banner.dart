import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class DiscountBanner extends StatelessWidget {
  final String bannerImage, headlineLarge, headlineSmall;
  final Color? bannerColor;

  const DiscountBanner({
    super.key,
    required this.bannerImage,
    this.headlineLarge = '',
    this.headlineSmall = '',
    this.bannerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: bannerColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              height: 100.0,
              width: 100.0,
              child: Image.asset(bannerImage),
            ),
            const SizedBox(width: 10.0),
            Column(
              children: [
                Text.rich(
                  TextSpan(
                      text: '$headlineLarge \n',
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: headlineSmall,
                          style: const TextStyle(
                            color: kTextDarkColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal
                          ),
                        )
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
