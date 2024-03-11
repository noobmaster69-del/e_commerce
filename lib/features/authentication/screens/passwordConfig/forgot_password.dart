import 'package:e_commerce/features/authentication/screens/passwordConfig/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(
              Etexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(
              Etexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: ESizes.spaceBtwSections * 2),
            //Textfield
            TextFormField(
              decoration: const InputDecoration(
                  labelText: Etexts.eMail,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            //Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const ResetPassword()),
                    child: const Text(Etexts.submit)))
          ],
        ),
      ),
    );
  }
}
