import 'package:e_commerce/common/widgets/Texts/section_heading.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/features/authentication/screens/login/home/widgets/home_app_bar.dart';
import 'package:e_commerce/features/authentication/screens/login/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderWidget(
              child: Column(
                children: [
                  //Appbar
                  EHomeAppBar(),
                  SizedBox(height: ESizes.spaceBtwSections),

                  //Searchbar
                  ESearchContainer(
                    text: 'Search in Store',
                    icon: (Iconsax.search_normal),
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  //Heading & Categories
                  Padding(
                    padding: EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: ESizes.spaceBtwItems),

                        //Categories
                        EHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Body
            Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: ERoundedImage(
                imageUrl: EImages.promoBanner3,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ERoundedImage extends StatelessWidget {
  const ERoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundcolor = EColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = ESizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(ESizes.md)),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.circular(borderRadius),
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider)),
      ),
    );
  }
}
