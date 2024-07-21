import 'package:flutter/material.dart';


class ProductScreenImageWidget extends StatelessWidget {
  const ProductScreenImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset('assets/imgs/fruits/orange.png'),
      ),
    );
  }
}
