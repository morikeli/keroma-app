import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class RecentShopCard extends StatelessWidget {
  const RecentShopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: SizedBox(
          height: 70.0,
          width: 70.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade300.withOpacity(.4),
                image: const DecorationImage(
                  image:
                      AssetImage('assets/imgs/veggies/cauliflower.png'),
                )),
          ),
        ),
        title: const Text(
          'Fresh Cauliflower',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          'Vegetables',
          style: TextStyle(color: kTextGreyColor),
        ),
        trailing: const Text(
          '\$2.14',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
