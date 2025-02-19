import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/rounded_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image/circular_image.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecommerce_2025/utils/constants/enums.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.dark,
    required this.showBorder,
    this.onTap,
  });

  final bool dark;
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: TCircularImage(
                dark: dark,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                isNetworkImage: false,
              ),
            ),
            // Text
            const Gap(TSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
