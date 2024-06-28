import 'package:flutter/material.dart';
import 'package:grocery_app/screens/homepage/components/widgets/grocery_card/grocery_card.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/banners_widget.dart';
import 'package:grocery_app/screens/homepage/components/widgets/homepage/homepage_header.dart';
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
          children: const [
            HomepageHeader(),
            SizedBox(height: 15.0),
            SearchField(),
            SizedBox(height: 35.0),
            Banners(),  // discount and ad banners
            SizedBox(height: 25.0),

            // CustomTabs(),
            // CustomTabBarViewWidget()
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GroceryCard(),
                GroceryCard(),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GroceryCard(),
                GroceryCard(),
              ],
            ),
            SizedBox(height: 10.0),

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
