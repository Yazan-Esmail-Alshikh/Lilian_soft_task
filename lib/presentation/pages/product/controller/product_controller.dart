import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/cart/controller/cart_controller.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/add_quantity_dialog.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';

class ProductController extends GetxController {
  final PageController bannersController = PageController();
  final ScrollController scrollController = ScrollController();
  final cartController = Get.find<CartController>();
  final RxInt _bannersIndex = 0.obs;
  final RxInt _productQuantity = 0.obs;

  int get bannersIndex => _bannersIndex.value;

  int get productQuantity => _productQuantity.value;

  set bannersIndex(value) => _bannersIndex.value = value;

  set productQuantity(value) => _productQuantity.value = value;

  onAddQuantity() {
    productQuantity += 1;
  }

  onRemoveQuantity() {
    if (productQuantity != 0) {
      productQuantity -= 1;
    }
  }

  onTapAddToCart() {
    if (productQuantity == 0) {
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
      );
      Get.dialog(const AddQuantityDialog());
      return;
    } else {
      cartController.onAddToCart(productQuantity);
      Get.toNamed(AppRoutes.cartRoute);
    }
  }

  @override
  void onInit() {
    bannersController.addListener(() {
      bannersIndex = bannersController.page!.round();
    });
    super.onInit();
  }
}
