import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/pages/home/controller/home_controller.dart';

class BannersPageView extends GetView<HomeController> {
  const BannersPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.2.h(context),
      child: PageView.builder(
        controller: controller.bannersController,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    'https://www.expo2020dubai.com/-/media/expo2020/dining/talabat/update/talabat-kitchen-hero-1920x1080.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 0.2.h(context),
        ),
        itemCount: 8,
      ),
    );
  }
}
