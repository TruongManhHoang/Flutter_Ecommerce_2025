import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildButtonSocial(BuildContext context, String image,
        {VoidCallback? onPressed}) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: TColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Image(
            width: TSizes.iconMd,
            height: TSizes.iconMd,
            image: AssetImage(image),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButtonSocial(context, TImages.google, onPressed: () {}),
        Gap(TSizes.spaceBtwItems.w),
        buildButtonSocial(context, TImages.facebook, onPressed: () {}),
      ],
    );
  }
}
