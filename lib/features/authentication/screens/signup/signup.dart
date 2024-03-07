import 'package:e_commerce/common/widgets/form_divider.dart';
import 'package:e_commerce/common/widgets/social_button.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(Etexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              ///Form
              const ESignupForm(),
              const SizedBox(height: ESizes.spaceBtwSections),
              //Divider
              FormDivider(dividerText: Etexts.signUpW.capitalize!),

              //Social Buttons
              const SocialButton(),
              const SizedBox(height: ESizes.spaceBtwSections)
            ],
          ),
        ),
      ),
    );
  }
}
