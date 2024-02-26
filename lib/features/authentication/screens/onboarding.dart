import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: EHelperfunctions.screenWidth(context) * 0.8,
                    height: EHelperfunctions.screenHeight(context) * 0.6,
                    image: const AssetImage(EImages.onBoardingImage1),
                  ),
                  Text(
                    Etexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  Text(
                    Etexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          )

          //Skip Button

          //Dot Navigation SmoothPage Indicator

          //Circular Button
        ],
      ),
    );
  }
}
