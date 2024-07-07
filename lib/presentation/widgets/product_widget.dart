import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.productRoute),
      child: Container(
        width: 0.7.w(context),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsetsDirectional.only(end: 15),
        decoration: BoxDecoration(
          color: ColorManger.white,
          boxShadow: [getShadow()],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 1.w(context),
              height: 0.15.h(context),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.expo2020dubai.com/-/media/expo2020/dining/talabat/update/talabat-kitchen-hero-1920x1080.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and',
              style: context.textTheme.labelMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${AppString.aed} 29',
              style: context.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
