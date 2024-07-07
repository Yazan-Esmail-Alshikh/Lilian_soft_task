import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class SuffixButtonForFormFiled extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const SuffixButtonForFormFiled({required this.title, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorManger.indigo,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: context.textTheme.bodyLarge!.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
