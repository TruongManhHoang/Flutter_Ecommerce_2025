import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/on_boarding/widget/on_boardingDotNavigation.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/on_boarding/widget/on_boarding_new_button.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/on_boarding/widget/on_boarding_ship_widget.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/on_boarding/widget/on_boarding_widget.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_asset.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Horizontal ScrollView pages
        PageView(
          controller: controller,
          children: const [
            OnboardingWidget(
              image: AppAssets.onBoardingImage1,
              titile: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnboardingWidget(
              image: AppAssets.onBoardingImage2,
              titile: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnboardingWidget(
              image: AppAssets.onBoardingImage3,
              titile: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            )
          ],
        ),
        // Skip button
        const OnBoardingSkipWidget(),
        // Dot Navigation SmoothPageIndicator
        onBoardingDotNavigation(
          controller: controller,
        ),
        // Circular Button
        OnBoardingNewButton(
          controller: controller,
        )
      ],
    ));
  }
}
