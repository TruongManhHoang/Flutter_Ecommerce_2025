import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/device/device_utility.dart';

class OnBoardingSkipWidget extends StatelessWidget {
  const OnBoardingSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(onPressed: () {}, child: const Text('Skip')));
  }
}
