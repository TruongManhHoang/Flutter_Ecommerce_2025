import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/styles/shadow_styles.dart';
import 'package:flutter_ecommerce_2025/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/rounded_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/icons/circular_icon.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image/rounded_image.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        context.push(RouterName.productDetailScreen);
      },
      child: Container(
        width: sizeWidth * 0.45,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.dardGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumnail, wishlist
            TRoundedContainer(
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail Image
                  TRoundedImage(
                    image: TImages.productImage1,
                    applyImageRadius: true,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            // Details
            const Gap(TSizes.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  Gap(TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TProductPriceText(
                    price: '120',
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius),
                        )),
                    child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: TColors.white,
                          size: TSizes.iconSm,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
