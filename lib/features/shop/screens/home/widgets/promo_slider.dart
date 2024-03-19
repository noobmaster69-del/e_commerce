import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/images/e_rounded_images.dart';
import 'package:e_commerce/features/shop/controllers/home_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';

import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPromoSlider extends StatelessWidget {
  const EPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePackageIndicator(index)),
          items: banners.map((url) => ERoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backGroundcolor: controller.carouselCurrentIndex.value == i
                        ? EColors.primary
                        : EColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
