import 'package:flutter/material.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/screens/categories/categories_screen.dart';
import 'package:grocery_app/screens/homepage/homepage.dart';


class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Olivia Jones'),
                accountEmail: Text('oliviajones@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/imgs/default.png'),
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () => Navigator.popAndPushNamed(context, Homepage.routeName),
              ),
              ListTile(
                leading: const Icon(Icons.list_outlined),
                title: const Text('Categories'),
                onTap: () => Navigator.popAndPushNamed(context, CategoriesScreen.routeName),
              ),
              ListTile(
                leading: const Icon(Icons.airport_shuttle),
                title: const Text('Deliveries'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {},
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
