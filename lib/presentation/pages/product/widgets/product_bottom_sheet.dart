import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/pages/product/controller/product_controller.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class ProductBottomSheet extends GetView<ProductController> {
  const ProductBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      color: ColorManger.white60,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: controller.onTapAddToCart,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorManger.indigo),
              minimumSize: MaterialStateProperty.all(
                const Size(double.infinity, 50),
              ),
            ),
            child: Text(
              AppString.addToCart,
              style: context.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }
}
