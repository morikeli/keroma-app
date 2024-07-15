import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/screens/homepage/homepage.dart';


class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kPrimaryColor,
      ),
      width: MediaQuery.of(context).size.width * .9,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, Homepage.routeName);
        },
        child: const Text(
          'Submit',
          style: TextStyle(color: kTextLightColor),
        ),
      ),
    );
  }
}
