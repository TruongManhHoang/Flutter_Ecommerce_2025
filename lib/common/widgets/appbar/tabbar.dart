import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/device/device_utility.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.dark,
    required this.tabs,
  });
  final List<Widget> tabs;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: dark ? TColors.white : TColors.black,
        unselectedLabelColor: TColors.dardGrey,
        tabAlignment: TabAlignment.start,
        labelColor: dark ? TColors.white : TColors.black,
        tabs: tabs);
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
