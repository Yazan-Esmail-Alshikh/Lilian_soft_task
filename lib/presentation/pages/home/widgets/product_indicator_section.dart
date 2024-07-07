import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/custom_page_indicator.dart';
import 'package:lilian_soft_task/presentation/widgets/product_deals_widget.dart';

class ProductIndicatorSection extends StatelessWidget {
  final String sectionName;
  final PageController controller;
  final int currentIndex;

  const ProductIndicatorSection(
      {required this.sectionName,
      required this.currentIndex,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              sectionName,
              style: context.textTheme.labelLarge,
            ),
            const Spacer(),
            Text(
              AppString.viewAll,
              style: context.textTheme.displayMedium,
            ),
            const RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.arrow_drop_down,
                color: ColorManger.indigo,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 173,
          child: PageView.builder(
            controller: controller,
            padEnds: false,
            pageSnapping: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const ProductDealsWidget(),
            itemCount: 12,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomPageIndicator(
          length: 6,
          currentIndex: currentIndex,
          height: 6,
          width: 6,
          spacing: 10,
        ),
      ],
    );
  }
}
