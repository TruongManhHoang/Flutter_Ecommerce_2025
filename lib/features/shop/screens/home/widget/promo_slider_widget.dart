import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/common/widgets/image/rounded_image.dart';
import 'package:flutter_ecommerce_2025/utils/constants/colors.dart';
import 'package:flutter_ecommerce_2025/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_2025/utils/helpers/helper_functions.dart';
import 'package:gap/gap.dart';

class TPromosliderWidget extends StatefulWidget {
  const TPromosliderWidget({super.key, required this.items});
  final List<String> items;

  @override
  State<TPromosliderWidget> createState() => _TpromosliderState();
}

class _TpromosliderState extends State<TPromosliderWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.items.map((image) {
            return TRoundedImage(
              image: image,
              backgroundColor: TColors.light,
            );
          }).toList(),
        ),
        const Gap(TSizes.spaceBtwItems),
        DotsIndicator(
          dotsCount: widget.items.length,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}
