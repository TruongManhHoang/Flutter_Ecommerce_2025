import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Gap(TSizes.spaceBtwItems.h),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Gap(TSizes.spaceBtwSections.h * 2),
            // Text field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            Gap(TSizes.spaceBtwSections.h),
            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    context.push(RouterName.resetPassword);
                  },
                  child: const Text(TTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
