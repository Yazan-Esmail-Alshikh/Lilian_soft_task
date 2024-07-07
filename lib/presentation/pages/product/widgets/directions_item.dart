import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';

class DirectionsItem extends StatelessWidget {
  const DirectionsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorManger.white,
        boxShadow: [getShadow()],
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Liwan Restaurant',
                style: context.textTheme.labelLarge,
              ),
              const Icon(
                Icons.location_on_rounded,
                color: ColorManger.amber,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_rounded,
                color: ColorManger.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  'omar bin al khattab road ,neat fish roundabout',
                  style: context.textTheme.headlineSmall!.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
