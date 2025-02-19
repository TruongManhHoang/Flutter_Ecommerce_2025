import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image/circular_image.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_2025/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';
import 'package:gap/gap.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppThemeBrightness.isDarkMode(context);

    return Scaffold(
        appBar: TAppBar(
          title: Text(
            'Profile',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [],
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Profile Image
                SizedBox(
                  width: THelperFunctions.screenWidth(context),
                  child: Column(
                    children: [
                      TCircularImage(
                        dark: dark,
                        image: TImages.user,
                        width: 80,
                        height: 80,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text('change profile image')),
                    ],
                  ),
                ),
                // Details
                Gap(TSizes.spaceBtwItems / 2),
                Divider(),
                Gap(TSizes.spaceBtwItems),
                TSectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),
                Gap(TSizes.spaceBtwItems),
                TProfileMenu(title: 'Name', value: 'Hoang', onPressed: () {}),
                TProfileMenu(
                    title: 'UserName', value: 'Manh Hoang', onPressed: () {}),
                Gap(TSizes.spaceBtwItems / 2),
                Divider(),
                Gap(TSizes.spaceBtwItems),
                // Headiing Personal Information
                TSectionHeading(
                  title: 'Personal Information',
                  showActionButton: false,
                ),
                Gap(TSizes.spaceBtwItems),
                TProfileMenu(
                  title: 'User ID',
                  value: '1242',
                  onPressed: () {},
                  icon: Iconsax.copy_copy,
                ),
                TProfileMenu(
                    title: 'Email', value: '@gmail.com', onPressed: () {}),
                TProfileMenu(
                    title: 'Phone Number',
                    value: '1241125125',
                    onPressed: () {}),
                TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
                TProfileMenu(
                    title: 'Date Of Birth',
                    value: '24 oct, 2003',
                    onPressed: () {}),
                Divider(),
                Gap(TSizes.spaceBtwItems),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
