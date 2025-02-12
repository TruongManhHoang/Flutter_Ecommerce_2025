import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/t_form_divider_widget.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/login/widget/social_button_widget.dart';
import 'package:flutter_ecommerce_2025/features/authentication/screens/signup/widget/signup_form_widget.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: TSizes.defaultSpace,
          ),
          child: Column(
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Gap(TSizes.spaceBtwSections.h),
              // Form
              const SignupFormWidget(),
              Gap(TSizes.spaceBtwSections.h / 2),

              const TFormDividerWidget(dividerText: TTexts.orSignUpWith),
              Gap(TSizes.spaceBtwSections.h / 2),
              const SocialButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
