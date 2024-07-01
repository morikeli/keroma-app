import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/homepage.dart';
import 'package:grocery_app/screens/product_details/product_details.dart';


final Map<String, WidgetBuilder> routes = {
  Homepage.routeName: (context) => const Homepage(),
  ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(), 
};