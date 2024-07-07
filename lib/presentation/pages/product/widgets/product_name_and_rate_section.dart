import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:rate/rate.dart';

class ProductNameAndRateSection extends StatelessWidget {
  const ProductNameAndRateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManger.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: context.textTheme.labelLarge!.copyWith(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: context.textTheme.headlineSmall!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                '4.5',
                style: context.textTheme.labelLarge!.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Rate(
                iconSize: 25,
                color: ColorManger.amber,
                allowHalf: true,
                allowClear: true,
                initialValue: 4.5,
                readOnly: true,
              ),
              Text(
                '(2)',
                style: context.textTheme.headlineMedium,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                decoration: BoxDecoration(
                  color: ColorManger.amber.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: ColorManger.amber,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.forLimitedTimeOnly,
                      style: context.textTheme.displayMedium!.copyWith(
                        fontSize: 14,
                        color: ColorManger.amber,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                decoration: BoxDecoration(
                  color: ColorManger.amber.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: ColorManger.amber,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '457 ${AppString.bought}',
                      style: context.textTheme.displayMedium!.copyWith(
                        fontSize: 14,
                        color: ColorManger.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
