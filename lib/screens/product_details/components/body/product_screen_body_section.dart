import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_details/components/body/add_to_cart_and_price_widget.dart';
import 'package:grocery_app/screens/product_details/components/body/product_description_widget.dart';
import 'package:grocery_app/screens/product_details/components/body/product_screen_additional_info.dart';
import 'package:grocery_app/screens/product_details/components/body/product_screen_body_title.dart';


class ProductScreenBodyWidget extends StatelessWidget {
  const ProductScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          ProductScreenTitleWidget(),
          SizedBox(height: 15.0),
          ProductScreenAdditionalInfoWidget(),
          SizedBox(height: 35.0),
          ProductDescriptionWidget(),
          SizedBox(height: 20.0),
          ProductPriceandAddToCartWidget(),
        ],
      ),
    );
  }
}
