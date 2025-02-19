import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/appbar/tabbar.dart';
import 'package:flutter_ecommerce_2025/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_2025/common/widgets/container/search_container.dart';
import 'package:flutter_ecommerce_2025/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_2025/common/widgets/product/products_cart/products_cart.dart';
import 'package:flutter_ecommerce_2025/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/store/widget/category_tab.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:gap/gap.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppThemeBrightness.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: dark ? TColors.dark : TColors.white,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              final dark = AppThemeBrightness.isDarkMode(context);
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  elevation: 0,
                  expandedHeight: 500,
                  automaticallyImplyLeading: false,
                  flexibleSpace: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(), // Cho phép cuộn mượt hơn
                    child: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TSearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackgound: false,
                            icon: Iconsax.search_normal,
                            padding: EdgeInsets.zero,
                          ),
                          const Gap(TSizes.spaceBtwSections),
                          // Featured brands
                          TSectionHeading(
                              title: 'Featured Brands', onPressed: () {}),
                          TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return TBrandCard(dark: dark, showBorder: true);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50),
                    child: TTabBar(
                      dark: dark,
                      tabs: const [
                        Tab(
                          child: Text(
                            'Sports',
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Furniture',
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Electronics',
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Clothes',
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Cosmetics',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(children: [
              TCategoryTab(dark: dark),
              TCategoryTab(dark: dark),
              TCategoryTab(dark: dark),
              TCategoryTab(dark: dark),
              TCategoryTab(dark: dark),
            ])),
      ),
    );
  }
}
