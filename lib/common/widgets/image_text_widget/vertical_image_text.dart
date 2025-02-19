import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_radius.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText(
      {super.key,
      required this.sizeWidth,
      required this.sizeHeight,
      required this.image,
      required this.title,
      this.backgroundColor,
      this.onTap});

  final double sizeWidth;
  final double sizeHeight;
  final String image, title;
  // Color textColor = TColors.white;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = AppThemeBrightness.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: sizeWidth * 0.12,
              height: sizeHeight * 0.056,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(AppRadius.radius100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? TColors.light : TColors.dark,
                ),
              ),
            ),
            const Gap(TSizes.spaceBtwItems / 2),
            SizedBox(
              width: sizeWidth * 0.1,
              child: Text(
                title,
                maxLines: 1,
                // overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: dark ? TColors.white : TColors.dark),
              ),
            )
          ],
        ),
      ),
    );
  }
}
