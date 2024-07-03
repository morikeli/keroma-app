import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/homepage.dart';
import 'package:grocery_app/screens/login/login.dart';
import 'package:grocery_app/screens/otp/otp.dart';
import 'package:grocery_app/screens/product_details/product_details.dart';
import 'package:grocery_app/screens/signup/signup.dart';


final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignupScreen.routeName:(context) => const SignupScreen(), 
  OTPScreen.routeName:(context) => const OTPScreen(),
  Homepage.routeName: (context) => const Homepage(),
  ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(), 
};