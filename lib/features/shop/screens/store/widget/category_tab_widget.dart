import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/brands/brand_show_case.dart';
import 'package:flutter_ecommerce_2025/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_2025/common/widgets/product/products_cart/product__card_vertical.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key, required this.dark});

  final bool dark;
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                TBrandShowCase(dark: dark, images: const [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ]),
                TBrandShowCase(dark: dark, images: const [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ]),
                const Gap(TSizes.spaceBtwItems),

                TSectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const Gap(TSizes.spaceBtwItems),
                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical()),
                const Gap(TSizes.spaceBtwSections)
              ],
            ),
          ),
        ]);
  }
}
