import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.radius = TSizes.cardRadiusLg,
      this.child,
      this.borderColor = TColors.borderPrimary,
      this.showBorder = false,
      this.backgroundColor = TColors.white,
      this.padding,
      this.margin,
      this.changeBorderRadius = false,
      this.showShadow = false});

  final double? radius;
  final Widget? child;
  final Color? borderColor;
  final bool showBorder;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool changeBorderRadius;
  final bool showShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: changeBorderRadius
            ? BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            : BorderRadius.circular(radius!),
        boxShadow: showShadow
            ? [
                const BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, -2),
                )
              ]
            : [],
      ),
      child: child,
    );
  }
}
