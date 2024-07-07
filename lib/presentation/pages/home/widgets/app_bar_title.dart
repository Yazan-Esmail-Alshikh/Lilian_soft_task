import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined,
          color: ColorManger.indigo,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          AppString.dubai,
          style: context.textTheme.displayLarge,
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.arrow_drop_down,
          color: ColorManger.indigo,
        )
      ],
    );
  }
}
