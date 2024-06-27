import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  const CustomFloatingActionBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: const CircleBorder(
        side: BorderSide(
          color: kPrimaryColor,
          width: 4.5,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            color: kPrimaryColor,
          ),
          Positioned(
            right: -5,
            top: -15,
            child: Container(
              decoration: const BoxDecoration(
                color: kCartBadge,
                shape: BoxShape.circle
              ),
              padding: const EdgeInsets.all(4.0),
              child: const Text(
                '3',
                style: TextStyle(color: kTextLightColor, fontSize: 13.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
