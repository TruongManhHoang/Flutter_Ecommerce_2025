import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/basic_app_button.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_spacings.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:flutter_ecommerce_2025/utils/theme/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_ecommerce_2025/utils/theme/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildTextFields(String hintText) {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .lightBodyLargeMedium
              .copyWith(color: AppColors.grey979797),
        ),
      );
    }

    Widget continueButton(BuildContext context, Function() onPressed) {
      return BasicAppButton(
        onPressed: onPressed,
        title: 'Continue',
        height: MediaQuery.of(context).size.height * 0.05,
        borderRadius: 100,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => context.go(RouterName.signin),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style:
                  Theme.of(context).textTheme.lightHeadingMediumLarge.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
            ),
            Gap(20.h),
            buildTextFields('Email Address'),
            Gap(10.h),
            buildTextFields('Password'),
            Gap(10.h),
            buildTextFields('Confirm Password'),
            Gap(20.h),
            continueButton(context, () {})
          ],
        ),
      ),
    );
  }
}
