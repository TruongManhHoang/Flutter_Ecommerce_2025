import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

// ignore: must_be_immutable
class TCartCounterIcon extends StatelessWidget {
  TCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });
  VoidCallback? onPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              color: TColors.black, borderRadius: BorderRadius.circular(100)),
          child: Center(
              child: Text(
            '2',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: TColors.white),
          )),
        ),
      )
    ]);
  }
}
