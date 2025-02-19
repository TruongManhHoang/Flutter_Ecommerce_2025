import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';

// ignore: must_be_immutable
class TCircularContainer extends StatelessWidget {
  TCircularContainer({
    super.key,
    this.height = 100,
    this.width = 100,
    this.margin,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = TColors.white,
    this.index = 0,
  });

  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  int index;
  // void increase(int index) {
  //   return;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
