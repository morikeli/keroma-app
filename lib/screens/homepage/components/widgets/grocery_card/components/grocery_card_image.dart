import 'package:flutter/material.dart';


class GroceryCardImageWidget extends StatelessWidget {
  const GroceryCardImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 120.0,
        width: 120.0,
        child: Image.asset('assets/imgs/fruits/orange.png'),
      ),
    );
  }
}
