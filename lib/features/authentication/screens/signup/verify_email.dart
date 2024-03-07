import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/succes_screen/succes_screen.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(children: [
            //Image
            Image(
              image: const AssetImage(EImages.deliveredEmailIllustration),
              width: EHelperfunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            //Title and Subtitle
            Text(Etexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text('random@randommail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(Etexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(height: ESizes.spaceBtwItems),

            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                  () => SuccesScreen(
                    image: EImages.staticSuccesIllustration,
                    title: Etexts.yourAccountCreatedTitle,
                    subtitle: Etexts.yourAccountCreatedSubtitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  ),
                ),
                child: const Text(Etexts.eContinue),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(Etexts.resendEmail),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
