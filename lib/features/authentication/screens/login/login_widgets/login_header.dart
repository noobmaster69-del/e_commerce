import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? EImages.lightApplogo : EImages.darkApplogo),
        ),
        Text(Etexts.logInTitle1,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: ESizes.sm,
        ),
        Text(Etexts.logInSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
