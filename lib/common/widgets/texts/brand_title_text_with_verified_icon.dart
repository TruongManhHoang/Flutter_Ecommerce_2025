import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/brand_title_text.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/enums.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.textColor,
    this.iconColor,
  });
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final Color? textColor, iconColor;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TBrandTitleText(
          title: title,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
          color: textColor,
        ),
        const Gap(TSizes.xs),
        const Icon(
          Iconsax.verify,
          color: TColors.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
