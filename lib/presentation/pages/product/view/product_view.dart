import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/pages/product/controller/product_controller.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_bottom_sheet.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_choose_option_section.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_banners_section.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_conditions_section.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_directions_section.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_highlight_section.dart';
import 'package:lilian_soft_task/presentation/pages/product/widgets/product_name_and_rate_section.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/app_back_button.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        actions: [
          const Icon(
            Icons.favorite_border_outlined,
            color: ColorManger.black,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.share,
            color: ColorManger.black,
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.cartRoute),
            child: const Icon(
              Icons.shopping_cart,
              color: ColorManger.black,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      backgroundColor: ColorManger.white95,
      body: ListView(
        controller: controller.scrollController,
        padding: EdgeInsets.only(bottom: 0.1.h(context)),
        children: const [
          ProductBannersSection(),
          SizedBox(
            height: 5,
          ),
          ProductNameAndRateSection(),
          SizedBox(
            height: 5,
          ),
          ProductChooseOptionSection(),
          SizedBox(
            height: 5,
          ),
          ProductHighlightSection(),
          SizedBox(
            height: 5,
          ),
          ProductConditionsSection(),
          SizedBox(
            height: 5,
          ),
          ProductDirectionsSection(),
          SizedBox(
            height: 5,
          ),
        ],
      ),
      bottomSheet: const ProductBottomSheet(),
    );
  }
}
