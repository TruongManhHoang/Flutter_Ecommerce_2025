import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';

class onBoardingDotNavigation extends StatelessWidget {
  final PageController controller;
  const onBoardingDotNavigation({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller,
        onDotClicked: (index) => controller.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut),
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 7,
          // dotWidth: 16,
          activeDotColor: dark ? TColors.light : TColors.dark,
        ),
      ),
    );
  }
}
