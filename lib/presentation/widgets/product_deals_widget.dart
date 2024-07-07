import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';

class ProductDealsWidget extends StatelessWidget {
  const ProductDealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.productRoute),
      child: Container(
        padding: const EdgeInsetsDirectional.only(end: 10),
        width: 0.5.w(context),
        child: Column(
          children: [
            Container(
              width: 1.w(context),
              height: 80,
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
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelMedium!.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '${AppString.aed} 35',
                  style: context.textTheme.labelLarge,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '170',
                  style: context.textTheme.headlineMedium!.copyWith(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: ColorManger.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorManger.amber.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '79 %',
                    style: context.textTheme.displayMedium!
                        .copyWith(color: ColorManger.amber, fontSize: 12),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
