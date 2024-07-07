import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/widgets/product_widget.dart';

class UnmissableOffersSection extends StatelessWidget {
  const UnmissableOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.unmissableOffers,
          style: context.textTheme.labelLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: List.generate(
              5,
              (index) => const ProductWidget(),
            ),
          ),
        ),
      ],
    );
  }
}
