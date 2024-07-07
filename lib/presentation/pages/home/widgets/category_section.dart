import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/home/controller/home_controller.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/category_widget.dart';
import 'package:lilian_soft_task/presentation/widgets/custom_page_indicator.dart';

class CategorySection extends GetView<HomeController> {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: ColorManger.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [getShadow()]),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: GridView.count(
              crossAxisCount: 2,
              controller: controller.categoryScrollController,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              crossAxisSpacing: 20,
              mainAxisSpacing: 45,
              children: List.generate(
                10,
                (index) => const CategoryWidget(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(() => CustomPageIndicator(
              length: 2, currentIndex: controller.categoryIndex)),
        ],
      ),
    );
  }
}
