import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/pages/cart/controller/cart_controller.dart';
import 'package:lilian_soft_task/presentation/pages/cart/widgets/cart_bottom_sheet.dart';
import 'package:lilian_soft_task/presentation/pages/cart/widgets/product_cart_item.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/app_back_button.dart';
import 'package:lilian_soft_task/presentation/widgets/app_form_filed.dart';
import 'package:lilian_soft_task/presentation/widgets/suffix_button_for_form_filed.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        centerTitle: true,
        title: Text(
          AppString.myCart,
          style: context.textTheme.labelLarge,
        ),
      ),
      body: Obx(
        () => controller.products.isEmpty
            ? Center(
                child: Text(
                  AppString.noDealsFound,
                  style: context.textTheme.labelMedium,
                ),
              )
            : ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                children: [
                  ...List.generate(
                    controller.products.length,
                    (index) => ProductCartItem(
                      quantity: controller.products[index],
                      onTapRemove: () => controller.onRemoveFromCart(index),
                      onTapRemoveQuantity: () =>
                          controller.onRemoveQuantity(index),
                      onTapAddQuantity: () => controller.onAddQuantity(index),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppString.discountCode,
                    style: context.textTheme.labelLarge!.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppFormFiled(
                    hint: AppString.enterCouponCode,
                    suffixIcon:
                        SuffixButtonForFormFiled(title: AppString.apply),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppString.coboneGiftCard,
                    style: context.textTheme.labelLarge!.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppFormFiled(
                    hint: AppString.giftCardCode,
                    suffixIcon:
                        SuffixButtonForFormFiled(title: AppString.apply),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppString.paymentDetails,
                    style: context.textTheme.labelLarge!.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 1.w(context),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorManger.white,
                      boxShadow: [getShadow()],
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.subTotal,
                              style: context.textTheme.labelSmall!.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${AppString.aed} ${controller.total}',
                              style: context.textTheme.labelSmall!.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: ColorManger.black,
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.toPay,
                              style: context.textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${AppString.aed} ${controller.total}',
                              style: context.textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.15.h(context),
                  ),
                ],
              ),
      ),
      bottomSheet: const CartBottomSheet(),
    );
  }
}
