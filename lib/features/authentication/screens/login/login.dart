import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperfunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title & Sub-title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? EImages.lightApplogo : EImages.darkApplogo),
                  ),
                  Text(Etexts.logInTitle1,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: ESizes.sm,
                  ),
                  Text(Etexts.logInSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              ///Form
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: ESizes.spaceBtwSections),
                child: Form(
                  child: Column(
                    children: [
                      ///E-mail
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: Etexts.eMail,
                        ),
                      ),
                      const SizedBox(height: ESizes.spacebtwInputFields),

                      ///Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.password_check,
                          ),
                          labelText: Etexts.passWord,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: ESizes.spacebtwInputFields / 2),

                      /// Remeber Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Remember Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(Etexts.remember),
                            ],
                          ),

                          ///Forget Password
                          TextButton(
                            onPressed: () {},
                            child: const Text(Etexts.forgotPassword),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: ESizes.spaceBtwSections,
                      ),

                      ///Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text(Etexts.signIn)),
                      ),
                      const SizedBox(height: ESizes.spaceBtwItems),

                      ///Create an account button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(Etexts.createAcc)),
                      ),
                      const SizedBox(height: ESizes.spaceBtwItems),
                    ],
                  ),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                        color: dark ? EColors.darkGrey : EColors.darkGrey,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5),
                  ),
                  Text(Etexts.signInW.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                    child: Divider(
                        color: dark ? EColors.darkGrey : EColors.darkGrey,
                        thickness: 0.5,
                        indent: 5,
                        endIndent: 60),
                  ),
                ],
              ),

              ///Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: EColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: ESizes.md,
                        height: ESizes.md,
                        image: AssetImage(EImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: ESizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: EColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: ESizes.md,
                        height: ESizes.md,
                        image: AssetImage(EImages.facebook),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
