import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';

// ignore: must_be_immutable
class TPrimaryHeaderContainer extends StatelessWidget {
  TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        child: child,
      ),
    );
  }
}
