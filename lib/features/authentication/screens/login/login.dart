import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/widgets/form_divider.dart';
import 'package:e_commerce/common/widgets/social_button.dart';
import 'package:e_commerce/features/authentication/screens/login/login_widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/login_widgets/login_header.dart';

import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

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
              LoginHeader(dark: dark),

              ///Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: Etexts.signInW.capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections),

              ///Footer
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
