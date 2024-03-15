import 'package:e_commerce/common/widgets/Texts/section_heading.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/features/authentication/screens/login/home/widgets/home_app_bar.dart';
import 'package:e_commerce/features/authentication/screens/login/home/widgets/home_categories.dart';
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
          ],
        ),
      ),
    );
  }
}
