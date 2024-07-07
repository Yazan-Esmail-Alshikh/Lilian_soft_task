import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/product/controller/product_controller.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class ProductChooseOptionSection extends GetView<ProductController> {
  const ProductChooseOptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManger.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.chooseYourOption,
            style: context.textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Lorem Ipsum has been the industry\'s',
            style: context.textTheme.labelMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '${AppString.aed} 69',
                style: context.textTheme.labelLarge,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '99',
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
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Text(
                  '30 %',
                  style: context.textTheme.labelMedium!.copyWith(
                    color: ColorManger.amber,
                    fontSize: 12,
                  ),
                ),
              ),
              const Spacer(),
              Obx(
                () => GestureDetector(
                  onTap: controller.onRemoveQuantity,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: ColorManger.grey.withOpacity(0.2),
                      borderRadius: BorderRadiusDirectional.circular(5),
                      border: Border.all(
                        color: controller.productQuantity != 0
                            ? ColorManger.grey
                            : ColorManger.grey.withOpacity(0.7),
                      ),
                    ),
                    child: Icon(
                      Icons.remove,
                      color: controller.productQuantity != 0
                          ? ColorManger.black
                          : ColorManger.grey.withOpacity(0.7),
                      size: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Obx(
                () => Text(
                  '${controller.productQuantity}',
                  style: context.textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: controller.onAddQuantity,
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
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
