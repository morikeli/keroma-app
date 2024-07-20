import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';

class ProductScreenTitleWidget extends StatefulWidget {
  const ProductScreenTitleWidget({
    super.key,
  });

  @override
  State<ProductScreenTitleWidget> createState() =>
      _ProductScreenTitleWidgetState();
}

class _ProductScreenTitleWidgetState extends State<ProductScreenTitleWidget> {
  int _totalWeight = 1;

  void incrementTotalWeight() {
    setState(() {
      _totalWeight++;
    });
  }

  void decrementTotalWeight() {
    setState(() {
      if (_totalWeight > 1) {
        _totalWeight--;
      } else {
        _totalWeight = _totalWeight;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Pineapple',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 25.0,
              width: 25.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: kPrimaryColor,
              ),
              child: IconButton(
                onPressed: decrementTotalWeight,
                icon: const Icon(
                  Icons.horizontal_rule,
                  color: kIconLightColor,
                  size: 10.0,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_totalWeight kg',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 25.0,
              width: 25.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: kPrimaryColor,
              ),
              child: IconButton(
                onPressed: incrementTotalWeight,
                icon: const Icon(
                  Icons.add,
                  color: kIconLightColor,
                  size: 10.0,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
