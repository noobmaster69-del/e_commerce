import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderWidget(
              child: Column(
                children: [
                  EAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Etexts.homeAppBarTitle,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: EColors.grey)),
                        Text(Etexts.homeAppBarSubTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(color: EColors.white)),
                      ],
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.shopping_bag))
                    ],
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
