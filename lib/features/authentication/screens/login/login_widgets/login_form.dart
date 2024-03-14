import 'package:e_commerce/features/authentication/screens/passwordConfig/forgot_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/bottom_navigation.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
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
                  onPressed: () => Get.to(() => const ForgotPassword()),
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
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(Etexts.signIn)),
            ),
            const SizedBox(height: ESizes.spaceBtwItems),

            ///Create an account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text(Etexts.createAcc)),
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
