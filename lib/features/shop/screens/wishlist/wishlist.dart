import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_2025/common/widgets/icons/circular_icon.dart';
import 'package:flutter_ecommerce_2025/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_2025/common/widgets/product/products_cart/product__card_vertical.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';
import 'package:flutter_ecommerce_2025/utils/router/router_name.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
              dark: dark,
              icon: Iconsax.add,
              onPressed: () {
                context.push(RouterName.homeScreen);
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (context, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
