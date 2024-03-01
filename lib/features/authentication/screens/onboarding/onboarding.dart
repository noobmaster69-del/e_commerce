import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/image_string.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages
          PageView(
            children: const [
              OnBoardingPage(
                image: EImages.onBoardingImage1,
                title: Etexts.onBoardingTitle1,
                subTitles: Etexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage2,
                title: Etexts.onBoardingTitle2,
                subTitles: Etexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage3,
                title: Etexts.onBoardingTitle3,
                subTitles: Etexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPage Indicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingCircularButton()
        ],
      ),
    );
  }
}
