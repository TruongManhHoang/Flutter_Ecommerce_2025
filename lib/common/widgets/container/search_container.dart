import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/device/device_utility.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackgound = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackgound, showBorder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
      ),
      child: Container(
        width: TDeviceUtils.getScreenHeight(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackgound
                ? AppThemeBrightness.isDarkMode(context)
                    ? TColors.dark
                    : TColors.white
                : Colors.transparent,
            border: showBorder ? Border.all(color: TColors.grey) : null,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg)),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.dardGrey,
            ),
            Gap(TSizes.spaceBtwItems.w),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
