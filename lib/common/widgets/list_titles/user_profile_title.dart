import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image/circular_image.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.dark,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  final bool dark;
  final String image, title, subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: TCircularImage(
          dark: dark,
          image: image,
          width: 50,
          height: 50,
          padding: 0,
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),
        subtitle: Text(subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.white)),
        trailing: IconButton(
            onPressed: onTap,
            icon: Icon(
              icon,
              color: TColors.white,
            )));
  }
}
