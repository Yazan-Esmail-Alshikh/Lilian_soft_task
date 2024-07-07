import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:rate/rate.dart';

class ProductHighlightSection extends StatelessWidget {
  const ProductHighlightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: ColorManger.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.highlight,
            style: context.textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Rate(
                iconSize: 15,
                color: ColorManger.indigo,
                allowHalf: true,
                allowClear: true,
                initialValue: 4.5,
                readOnly: true,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '2 ${AppString.review}',
                style: context.textTheme.headlineMedium!.copyWith(
                  fontSize: 8,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful',
                  style: context.textTheme.headlineSmall!,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Text(
                'painful : ',
                style: context.textTheme.headlineSmall!.copyWith(
                  color: ColorManger.black,
                ),
              ),
              Text(
                'Test',
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Text(
                'Deal Inclusions : ',
                style: context.textTheme.headlineSmall!.copyWith(
                  color: ColorManger.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '- test data\n- test data\n- test data\n- test data\n- test data',
              style: context.textTheme.headlineSmall,
            ),
          )
        ],
      ),
    );
  }
}
