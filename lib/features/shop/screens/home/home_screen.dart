import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/primary_header_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/rounded_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/search_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_2025/common/widgets/product/products_cart/product__card_vertical.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/home/widget/home_appbar.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/home/widget/home_categories_widget.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/home/widget/promo_slider_widget.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final sizeWidth = THelperFunctions.screenWidth(context);
    final sizeHeight = THelperFunctions.screenHeight(context);

    return Scaffold(
      body: Stack(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                const THomeAppBar(),
                Gap(TSizes.spaceBtwSections / 2.h),
                const TSearchContainer(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                ),
                const Gap(TSizes.spaceBtwSections / 2),
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      const Gap(TSizes.spaceBtwItems),
                      THomeCategoriesWidget(
                          sizeHeight: sizeHeight, sizeWidth: sizeWidth),
                    ],
                  ),
                ),
                const Gap(TSizes.spaceBtwSections / 2),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.41,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemeBrightness.isDarkMode(context)
                    ? TColors.dark
                    : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TPromosliderWidget(items: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ]),
                    const Gap(TSizes.spaceBtwSections),
                    const TSectionHeading(
                      title: 'Popular Products',
                    ),
                    const Gap(TSizes.spaceBtwItems),
                    TGridLayout(
                      itemCount: 8,
                      itemBuilder: (context, index) =>
                          const TProductCardVertical(),
                    ),
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
