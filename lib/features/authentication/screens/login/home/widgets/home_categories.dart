import 'package:e_commerce/features/authentication/screens/login/home/widgets/Image_text/vertical_image_text.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:flutter/material.dart';

class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return EVerticalImageText(
            image: EImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
