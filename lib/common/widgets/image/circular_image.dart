import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    required this.dark,
    this.width = 56,
    this.height = 56,
    required this.image,
    this.radius = 100,
    this.padding = TSizes.sm,
    this.backgroundColor,
    this.overlayColor,
    this.isNetworkImage = false,
    this.fit = BoxFit.cover,
  });

  final bool dark;
  final double width, height, padding;
  final String image;
  final double radius;
  final Color? backgroundColor;
  final Color? overlayColor;
  final bool isNetworkImage;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
      ),
    );
  }
}
