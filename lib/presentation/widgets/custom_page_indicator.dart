import 'package:flutter/material.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  final int length;
  final int currentIndex;
  final double? width;
  final double? height;
  final double? spacing;

  const CustomPageIndicator(
      {required this.length,
      required this.currentIndex,
      this.width,
      this.height,
      this.spacing,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSmoothIndicator(
        activeIndex: currentIndex,
        count: length,
        effect: ExpandingDotsEffect(
          dotColor: ColorManger.amber.withOpacity(0.3),
          dotHeight: height ?? 5,
          dotWidth: width ?? 20,
          spacing: spacing ?? 2,
          activeDotColor: ColorManger.amber,
          expansionFactor: 1.1,
        ),
      ),
    );
  }
}
