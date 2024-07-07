import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/directions_item.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class ProductDirectionsSection extends StatelessWidget {
  const ProductDirectionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManger.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.directions,
            style: context.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) => const DirectionsItem(),
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
