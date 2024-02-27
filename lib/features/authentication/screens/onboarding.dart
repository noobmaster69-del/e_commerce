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
          )

          //Skip Button

          //Dot Navigation SmoothPage Indicator

          //Circular Button
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitles,
  });

  final String image, title, subTitles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: EHelperfunctions.screenWidth(context) * 0.8,
            height: EHelperfunctions.screenHeight(context) * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          Text(
            subTitles,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
