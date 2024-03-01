import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/devices/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperfunctions.isDarkMode(context);
    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceutils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? EColors.primary : Colors.black),
        child: const Icon(Icons.arrow_right_outlined),
      ),
    );
  }
}
