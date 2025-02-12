import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_asset.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: MediaQuery.of(context).size.height * 0.15,
          image: AssetImage(
            isDarkMode
                ? AppAssets.logoSplashWhitePng
                : AppAssets.logoSplashBlackPng,
          ),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
