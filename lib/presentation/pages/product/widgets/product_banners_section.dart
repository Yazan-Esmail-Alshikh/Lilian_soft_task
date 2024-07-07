import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/pages/product/controller/product_controller.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/custom_page_indicator.dart';

class ProductBannersSection extends GetView<ProductController> {
  const ProductBannersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      color: ColorManger.white,
      child: Column(
        children: [
          SizedBox(
            height: 0.23.h(context),
            child: PageView.builder(
              controller: controller.bannersController,
              itemBuilder: (context, index) => Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.expo2020dubai.com/-/media/expo2020/dining/talabat/update/talabat-kitchen-hero-1920x1080.png'),
                      fit: BoxFit.cover),
                ),
                height: 0.2.h(context),
              ),
              itemCount: 2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => CustomPageIndicator(
              currentIndex: controller.bannersIndex,
              length: 2,
            ),
          ),
        ],
      ),
    );
  }
}
