import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';

class ProductCartItem extends StatelessWidget {
  final int quantity;
  final void Function()? onTapRemove;
  final void Function()? onTapRemoveQuantity;
  final void Function()? onTapAddQuantity;

  const ProductCartItem(
      {required this.quantity,
      this.onTapAddQuantity,
      this.onTapRemove,
      this.onTapRemoveQuantity,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: ColorManger.white,
        boxShadow: [getShadow()],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 1.w(context),
                height: 0.2.h(context),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.expo2020dubai.com/-/media/expo2020/dining/talabat/update/talabat-kitchen-hero-1920x1080.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: GestureDetector(
                  onTap: onTapRemove,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: ColorManger.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: ColorManger.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and',
            style: context.textTheme.labelMedium,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                '${AppString.aed} 29',
                style: context.textTheme.labelLarge,
              ),
              const Spacer(),
              GestureDetector(
                onTap: onTapRemoveQuantity,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorManger.grey.withOpacity(0.2),
                    borderRadius: BorderRadiusDirectional.circular(5),
                    border: Border.all(
                      color: ColorManger.grey,
                    ),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: ColorManger.black,
                    size: 12,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '$quantity',
                style: context.textTheme.labelMedium,
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: onTapAddQuantity,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorManger.grey.withOpacity(0.2),
                    borderRadius: BorderRadiusDirectional.circular(5),
                    border: Border.all(color: ColorManger.grey),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: ColorManger.black,
                    size: 12,
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
