import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/home/controller/home_controller.dart';
import 'package:lilian_soft_task/presentation/pages/home/widgets/app_bar_title.dart';
import 'package:lilian_soft_task/presentation/pages/home/widgets/banners_section.dart';
import 'package:lilian_soft_task/presentation/pages/home/widgets/category_section.dart';
import 'package:lilian_soft_task/presentation/pages/home/widgets/custom_home_section.dart';
import 'package:lilian_soft_task/presentation/pages/home/widgets/product_indicator_section.dart';
import 'package:lilian_soft_task/presentation/pages/home/widgets/unmissable_offers_section.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/app_form_filed.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        actions: [
          const Icon(
            Icons.notifications,
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
            width: 10,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          const AppFormFiled(
            hint: AppString.searchCoupon,
            suffixIcon: Icon(Icons.search),
          ),
          const SizedBox(
            height: 10,
          ),
          const BannersSection(),
          const SizedBox(
            height: 15,
          ),
          const UnmissableOffersSection(),
          const SizedBox(
            height: 15,
          ),
          const CategorySection(),
          const SizedBox(
            height: 15,
          ),
          Obx(
            () => ProductIndicatorSection(
              controller: controller.newInPageController,
              currentIndex: controller.newInIndex,
              sectionName: AppString.newIn,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(sectionName: AppString.activities),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.auto,
            withService: false,
            withProductDeals: true,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.beauty,
            withProductDeals: true,
          ),
          const SizedBox(
            height: 15,
          ),
          Obx(
            () => ProductIndicatorSection(
              controller: controller.bestSellerPageController,
              currentIndex: controller.bestSellerIndex,
              sectionName: AppString.bestSeller,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.food,
            isServiceSquare: true,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.getaways,
            withService: false,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.services,
            withProductDeals: true,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.tickets,
            withProductDeals: true,
            withService: false,
            withDealsWidgets: false,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomHomeSection(
            sectionName: AppString.wellness,
            withProductDeals: true,
            isServiceSquare: true,
          ),
        ],
      ),
    );
  }
}
