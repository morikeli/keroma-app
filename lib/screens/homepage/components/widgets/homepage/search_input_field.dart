import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              color: kBoxShadowColor.withOpacity(0.6))
        ],
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search your daily grocery food',
          hintStyle: TextStyle(color: kHintTextandPrefixIconColor),
          prefixIcon: Icon(Icons.search),
          prefixIconColor: kHintTextandPrefixIconColor,
          suffixIcon: Icon(Icons.filter_list),
          suffixIconColor: kHintTextandPrefixIconColor,
        ),
      ),
    );
  }
}