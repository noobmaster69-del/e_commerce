import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/Texts/product_title.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/e_circular_container.dart';
import 'package:e_commerce/common/widgets/images/e_rounded_images.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/products/product_text/product_price_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperfunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkGrey : EColors.white,
        ),
        child: Column(
          children: [
            //Thumbnails, Wishlist Button, Discount Tool
            ERoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  //Thumbnail Image

                  const ERoundedImage(
                    imageUrl: EImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: ERoundedContainer(
                      radius: ESizes.sm,
                      backgroundColor: EColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: ESizes.sm, vertical: ESizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EColors.black),
                      ),
                    ),
                  ),
                  //Favorite Icon & Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        ECircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            //Details
            Padding(
              padding: const EdgeInsets.only(left: ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EProductTitleText(
                      title: 'Acer Laptop', smallSize: true),
                  const SizedBox(height: ESizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Acer',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: ESizes.xs),
                      const Icon(Iconsax.verify5,
                          color: EColors.primary, size: ESizes.iconxs)
                    ],
                  ),
                ],
              ),
            ),
            // Add spacer () here to keep the height of each Box same in case 1 or 2 Lines of heading
            const Spacer(),

            //Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: ESizes.sm),
                  child: EProductPriceText(price: '35.0'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: EColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(ESizes.cardRadiusMd),
                        bottomRight:
                            Radius.circular(ESizes.productImageRadius)),
                  ),
                  child: const SizedBox(
                    width: ESizes.iconlg * 1.2,
                    height: ESizes.lg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: EColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
