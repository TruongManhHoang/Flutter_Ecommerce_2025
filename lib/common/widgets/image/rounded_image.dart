import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.image,
    this.applyImageRadius = false,
    this.border,
    required this.backgroundColor,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });
  final String image;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(TSizes.md)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider,
              fit: BoxFit.contain,
            )),
      ),
    );
  }
}
