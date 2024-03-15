import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/devices/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ESearchContainer extends StatelessWidget {
  const ESearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperfunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
      child: Container(
        width: EDeviceutils.geteScreenWidth(context),
        padding: const EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? EColors.dark
                  : EColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
          border: showBorder ? Border.all(color: EColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: EColors.darkGrey),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
