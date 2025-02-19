import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_2025/common/widgets/t_form_divider_widget.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/login/widget/login_form_widget.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/login/widget/login_header_widget.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/login/widget/social_button_widget.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppThemeBrightness.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeaderWidget(isDarkMode: isDarkMode),
              const LoginFormWidget(),
              // Divider
              const TFormDividerWidget(dividerText: TTexts.orSignInWith),
              Gap(TSizes.spaceBtwSections.h),
              const SocialButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
