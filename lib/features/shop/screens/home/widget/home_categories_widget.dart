import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';

class THomeCategoriesWidget extends StatelessWidget {
  const THomeCategoriesWidget({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeHeight * 0.1,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TVerticalImageText(
              sizeWidth: sizeWidth,
              sizeHeight: sizeHeight,
              image: TImages.shoeIcon,
              onTap: () {},
              title: 'Shoes',
            );
          }),
    );
  }
}
