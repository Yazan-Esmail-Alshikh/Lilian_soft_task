import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorManger.indigo.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.ac_unit_outlined,
            color: ColorManger.indigo,
            size: 30,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'New In',
          style: context.textTheme.labelMedium!.copyWith(fontSize: 14),
        )
      ],
    );
  }
}
