import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/theme/app_text_style.dart';

class BasicAppButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final double? height;
  final double borderRadius;
  const BasicAppButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.height,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.lightBodyLargeRegular,
        ));
  }
}
