import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorManger.white,
        borderRadius: BorderRadiusDirectional.circular(5),
        boxShadow: [getShadow()],
      ),
      child: Text(
        'Outdoor Activities',
        maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.labelMedium!.copyWith(fontSize: 12),
      ),
    );
  }
}
