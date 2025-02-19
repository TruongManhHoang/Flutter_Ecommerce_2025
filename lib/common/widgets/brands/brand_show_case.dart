import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/rounded_container.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.dark,
    required this.images,
  });

  final bool dark;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.dardGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
      child: Column(
        children: [
          TBrandCard(dark: dark, showBorder: false),
          Row(
              children: images
                  .map((e) => brandTopProductImageWidget(dark, e, context))
                  .toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(bool dark, String image, context) {
    return Expanded(
        child: TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.all(TSizes.sm),
      backgroundColor: dark ? TColors.dardGrey : TColors.light,
      child: Image(image: AssetImage(image), fit: BoxFit.contain),
    ));
  }
}
