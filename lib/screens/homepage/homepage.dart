import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/components/homepage_body.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/drawer_widget.dart';

class Homepage extends StatelessWidget {
  static String routeName = 'homepage';
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: const HomepageBody(),
      drawer: CustomDrawerWidget(routeName: routeName),
    );
  }
}