import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_2025/common/widgets/icons/circular_icon.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image/rounded_image.dart';
import 'package:flutter_ecommerce_2025/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_2025/common/widgets/product/products_cart/product__card_vertical.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/home/widget/promo_slider_widget.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Ảnh sản phẩm nền
          Container(
            color: AppThemeBrightness.isDarkMode(context)
                ? TColors.dardGrey
                : TColors.light,
            child: SizedBox(
              height: screenSize.height * 0.4, // Chiếm 50% màn hình
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius),
                child: Center(
                  child: Image(image: AssetImage(TImages.productImage5)),
                ),
              ),
            ),
          ),

          // 🔹 Nội dung sản phẩm (Đè lên ảnh)
          Positioned(
            top: screenSize.height * 0.4,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemeBrightness.isDarkMode(context)
                    ? TColors.dark
                    : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: const [
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
          ),

          // 🔹 Danh sách ảnh nhỏ (Nằm ngay trên phần comment)
          Positioned(
            top: screenSize.height * 0.37,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => Gap(TSizes.spaceBtwItems),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 80,
                    child: TRoundedImage(
                      image: TImages.productImage5,
                      border: Border.all(color: TColors.primary),
                      backgroundColor: AppThemeBrightness.isDarkMode(context)
                          ? TColors.dark
                          : TColors.white,
                    ),
                  );
                },
              ),
            ),
          ),

          // 🔹 Thanh AppBar (Nằm trên cùng)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  dark: AppThemeBrightness.isDarkMode(context),
                  icon: Iconsax.heart_copy,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
