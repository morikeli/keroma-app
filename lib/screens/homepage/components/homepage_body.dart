import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/grocery_card.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/banners_widget.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/homepage_header.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/recent_shop_card.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/search_input_field.dart';

class HomepageBody extends StatefulWidget {
  const HomepageBody({
    super.key,
  });

  @override
  State<HomepageBody> createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody> {
  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 10, vsync: this);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const HomepageHeader(),
            const SizedBox(height: 15.0),
            const SearchField(),
            const SizedBox(height: 15.0),
            const Banners(), // discount and ad banners
            const SizedBox(height: 15.0),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15.0),
            // CustomTabs(),
            // CustomTabBarViewWidget()
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GroceryCard(),
                GroceryCard(),
              ],
            ),
            const SizedBox(height: 15.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GroceryCard(),
                GroceryCard(),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Recent Shop',
              style: TextStyle(fontSize: 18.0),
            ),
            // const SizedBox(height: 10.0),
            const RecentShopCard(),
            
          ],
        ),
      ),
    );
  }
}


// class CustomTabBarViewWidget extends StatelessWidget {
//   const CustomTabBarViewWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const TabBarView(
//       children: [
//         Text(
//           'Tab 1',
//         ),
//         Text(
//           'Tab 2',
//         ),
//         Text(
//           'Tab 3',
//         ),
//       ],
//     );
//   }
// }

// class CustomTabs extends StatelessWidget {
//   const CustomTabs({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const TabBar(
//       // controller: _tabController,
//       tabs: [
//         Text(
//           'Bakery',
//         ),
//         Text(
//           'Biscuits',
//         ),
//         Text(
//           'Cake',
//         ),
//         Text(
//           'Drinks',
//         ),
//         Text(
//           'Eggs & Milk',
//         ),
//         Text(
//           'Fish',
//         ),
//         Text(
//           'Ice cream',
//         ),
//         Text(
//           'Juice',
//         ),
//         Text(
//           'Sea food',
//         ),
//         Text(
//           'Vegetables',
//         ),
//       ],
//     );
//   }
// }
