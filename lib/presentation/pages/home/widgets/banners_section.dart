import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/home/controller/home_controller.dart';
import 'package:lilian_soft_task/presentation/widgets/custom_page_indicator.dart';

import 'banners_page_view.dart';

class BannersSection extends GetView<HomeController> {
  const BannersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BannersPageView(),
        const SizedBox(
          height: 5,
        ),
        Obx(
          () => CustomPageIndicator(
            currentIndex: controller.bannersIndex,
            length: 8,
          ),
        ),
      ],
    );
  }
}
