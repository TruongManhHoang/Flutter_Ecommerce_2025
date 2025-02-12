import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:gap/gap.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          Gap(TSizes.spaceBtwInputFields.h),
          //Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          Gap(TSizes.spaceBtwInputFields.h / 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              //Remember me
              const Text(TTexts.rememberMe),
              const Spacer(),
              //Forget password
              TextButton(
                onPressed: () {
                  context.push(RouterName.forgetPassword);
                },
                child: const Text(TTexts.forgetPassword),
              ),
            ],
          ),
          Gap(TSizes.spaceBtwItems.h),
          // Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.go(RouterName.navigationMenu);
              },
              child: const Text(TTexts.signIn),
            ),
          ),
          Gap(TSizes.spaceBtwSections.h / 2),

          //Create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                context.push(RouterName.signUp);
              },
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    ));
  }
}
