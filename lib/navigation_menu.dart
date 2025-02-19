import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/features/personalization/screens/setting/settings.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/home/home_screen.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/store/store.dart';
import 'package:flutter_ecommerce_2025/features/shop/screens/wishlist/wishlist.dart';
import 'package:flutter_ecommerce_2025/utils/constants/app_theme.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0; // Đưa biến này ra ngoài build()

  final List<Widget> _screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final dark = AppThemeBrightness.isDarkMode(context);
    return Scaffold(
      body: _screens[_selectedIndex], // Hiển thị màn hình theo tab đã chọn
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: dark ? TColors.dark : TColors.light,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(
                Iconsax.home,
                color: dark ? TColors.white : TColors.black,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Iconsax.shop,
                  color: dark ? TColors.white : TColors.black),
              label: 'Store'),
          NavigationDestination(
              icon: Icon(Iconsax.heart,
                  color: dark ? TColors.white : TColors.black),
              label: 'Wishlist'),
          NavigationDestination(
              icon: Icon(Iconsax.user,
                  color: dark ? TColors.white : TColors.black),
              label: 'Profile'),
        ],
      ),
    );
  }
}
