import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';

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
        height: MediaQuery.of(context).size.height * 0.5,
        child: Stack(
          children: [
            child,
            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height -
                    200, // Phần còn lại của màn hình
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
