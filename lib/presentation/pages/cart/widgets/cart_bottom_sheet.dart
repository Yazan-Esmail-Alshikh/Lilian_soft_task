import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/pages/cart/controller/cart_controller.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';

class CartBottomSheet extends GetView<CartController> {
  const CartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.products.isEmpty
          ? const SizedBox()
          : Container(
              width: 1.w(context),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: ColorManger.white,
                boxShadow: [getShadow()],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppString.totalPrice,
                        style: context.textTheme.labelMedium,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${AppString.aed} ${controller.total}',
                        style: context.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorManger.indigo),
                      minimumSize: MaterialStateProperty.all(
                        const Size(120, 50),
                      ),
                    ),
                    child: Text(
                      AppString.proceedToPay,
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
