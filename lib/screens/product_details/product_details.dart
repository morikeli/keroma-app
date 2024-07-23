// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_details/components/body/product_screen_body_section.dart';
import 'package:grocery_app/screens/product_details/components/product_screen_header.dart';
import 'package:grocery_app/screens/product_details/components/body/product_screen_image.dart';


class ProductDetailsScreen extends StatelessWidget {
  static String routeName = '/product-details';
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const ProductDetailsScreenHeader(),
            const ProductScreenImageWidget(),
            const ProductScreenBodyWidget()
          ],
        ),
      ),
    );
  }
}
