import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ESignupForm extends StatelessWidget {
  const ESignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperfunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                //First Name
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: Etexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ESizes.spacebtwInputFields),
              //LastName
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: Etexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spacebtwInputFields),

          ///Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: Etexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: ESizes.spacebtwInputFields),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: Etexts.eMail,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: ESizes.spacebtwInputFields),

          //Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: Etexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ESizes.spacebtwInputFields),

          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: Etexts.passWord,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ESizes.spacebtwInputFields),
          // Terms & Condition checkbox
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(width: ESizes.spaceBtwItems),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '${Etexts.iAgreeto} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: Etexts.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? EColors.white : EColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? EColors.white : EColors.primary)),
                  TextSpan(
                      text: '${Etexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: Etexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? EColors.white : EColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? EColors.white : EColors.primary),
                  ),
                ]),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spaceBtwSections),

          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(Etexts.createAcc),
            ),
          )
        ],
      ),
    );
  }
}
