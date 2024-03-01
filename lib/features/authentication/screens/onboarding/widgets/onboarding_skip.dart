import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceutils.getAppBarheight(),
        right: ESizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: const Text('Skip'),
        ));
  }
}
