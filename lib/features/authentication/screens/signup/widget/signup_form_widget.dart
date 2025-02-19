import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:gap/gap.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildFormField(
        BuildContext context, String labelText, IconData icon,
        {IconData? suffixIcon}) {
      return TextFormField(
        decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: Icon(icon),
            suffixIcon: Icon(suffixIcon)),
      );
    }

    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: buildFormField(context, TTexts.firstName, Iconsax.user),
            ),
            Gap(TSizes.spaceBtwInputFields.w),
            Expanded(
                child: buildFormField(context, TTexts.lastName, Iconsax.user)),
          ],
        ),
        Gap(TSizes.spaceBtwSections.h / 2),
        // Username
        buildFormField(context, TTexts.username, Iconsax.user_edit),

        Gap(TSizes.spaceBtwSections.h / 2),
        // Email
        buildFormField(context, TTexts.email, Iconsax.direct),

        Gap(TSizes.spaceBtwSections.h / 2),
        // Phone number
        buildFormField(context, TTexts.phoneNo, Iconsax.call),

        Gap(TSizes.spaceBtwSections.h / 2),
        // Password
        buildFormField(context, TTexts.password, Iconsax.password_check,
            suffixIcon: Iconsax.eye_slash),

        Gap(TSizes.spaceBtwSections.h),
        Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            Gap(TSizes.spaceBtwItems.w / 2),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppThemeBrightness.isDarkMode(context)
                            ? TColors.white
                            : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: AppThemeBrightness.isDarkMode(context)
                            ? TColors.white
                            : TColors.primary,
                      )),
              TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppThemeBrightness.isDarkMode(context)
                            ? TColors.white
                            : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: AppThemeBrightness.isDarkMode(context)
                            ? TColors.white
                            : TColors.primary,
                      )),
            ]))
          ],
        ),
        Gap(TSizes.spaceBtwSections.h),
        // Sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              context.push(RouterName.verifiyEmail);
            },
            child: const Text(TTexts.createAccount),
          ),
        ),
      ],
    ));
  }
}
