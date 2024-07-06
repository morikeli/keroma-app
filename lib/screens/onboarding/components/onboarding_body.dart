import 'package:grocery_app/models/onboarding_items.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboarding/components/widgets/onboarding_screen_content.dart';
import 'package:grocery_app/screens/onboarding/components/widgets/get_started.dart';


class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  final onboardingItems = items;
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: PageView.builder(
                onPageChanged: (index) => setState(() => isLastPage = items.length - 1 == index) ,
                controller: pageController,
                itemCount: onboardingItems.length,
                itemBuilder: (context, index) => OnboardingScreenContent(
                  imagePath: items[index]['image'].toString(),
                  title: items[index]['text'].toString(),
                  description: items[index]['description'].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SmoothPageIndicator(
                      //   controller: pageController,
                      //   count: controller.items.length,
                      //   effect: const WormEffect(
                      //     activeDotColor: kPrimaryColor,
                      //   ),
                      //   onDotClicked: (index) {
                      //     pageController.animateToPage(index,
                      //       duration: const Duration(milliseconds: 600), 
                      //       curve: Curves.easeIn
                      //     );
                      //   },
                      // ),
                  
                      if(isLastPage)
                        const GetStartedButton(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
