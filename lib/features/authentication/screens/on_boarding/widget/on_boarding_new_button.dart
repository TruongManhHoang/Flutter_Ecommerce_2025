import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:go_router/go_router.dart';

class OnBoardingNewButton extends StatelessWidget {
  final PageController controller;
  const OnBoardingNewButton({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () async {
            await controller.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
            Future.delayed(Duration(milliseconds: 500), () {
              context.go(RouterName.loginScreen);
            });
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.black,
          ),
          child: Icon(Icons.arrow_right)),
    );
  }
}
