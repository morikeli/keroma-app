import 'package:flutter/material.dart';


class ProductDetailsScreenHeader extends StatelessWidget {
  const ProductDetailsScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 30.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          margin: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new, size: 15.0),
          ),
        ),
        Container(
          height: 30.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          margin: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
