import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/primary_header_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/list_titles/setting_menu_titile.dart';
import 'package:flutter_ecommerce_2025/common/widgets/list_titles/user_profile_title.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppThemeBrightness.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          // Header
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              TAppBar(
                title: Text(
                  'Account',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              TUserProfileTile(
                dark: dark,
                title: 'Hoang',
                subtitle: '@gmail.com',
                icon: Iconsax.edit,
                image: TImages.user,
                onTap: () {
                  context.push(RouterName.profileScreen);
                },
              ),
              const Gap(TSizes.spaceBtwSections)
            ],
          )),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemeBrightness.isDarkMode(context)
                    ? TColors.dark
                    : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), // Bo góc trên
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TSectionHeading(
                      title: 'Account Settings',
                      showActionButton: false,
                    ),
                    const Gap(TSizes.spaceBtwItems),
                    TSettingMenuTitle(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subtitle: 'Set shopping delivery address',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In progress and delivered orders',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all the discount coupons',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notifications message',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected account',
                      onTap: () {},
                    ),
                    const Gap(TSizes.spaceBtwSections),
                    const TSectionHeading(
                      title: 'App Settings',
                      showActionButton: false,
                    ),
                    const Gap(TSizes.spaceBtwItems),
                    TSettingMenuTitle(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload data to your cloud Firesbase',
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {},
                    ),
                    TSettingMenuTitle(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subtitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {}),
                      onTap: () {},
                    ),
                    const Gap(TSizes.spaceBtwSections),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout')),
                    ),
                    const Gap(TSizes.spaceBtwSections * 2.5)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
