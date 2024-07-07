import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final PageController bannersController = PageController();
  final ScrollController categoryScrollController = ScrollController();
  final PageController newInPageController =
      PageController(viewportFraction: 1 / 1.8);
  final PageController bestSellerPageController =
      PageController(viewportFraction: 1 / 1.8);
  final RxInt _bannersIndex = 0.obs;
  final RxInt _categoryIndex = 0.obs;
  final RxInt _newInIndex = 0.obs;
  final RxInt _bestSellerIndex = 0.obs;

  int get bannersIndex => _bannersIndex.value;
  int get categoryIndex => _categoryIndex.value;
  int get newInIndex => _newInIndex.value;
  int get bestSellerIndex => _bestSellerIndex.value;

  set bannersIndex(value) => _bannersIndex.value = value;
  set categoryIndex(value) => _categoryIndex.value = value;
  set newInIndex(value) => _newInIndex.value = value;
  set bestSellerIndex(value) => _bestSellerIndex.value = value;

  @override
  void onInit() {
    bannersController.addListener(() {
      bannersIndex = bannersController.page!.round();
    });
    categoryScrollController.addListener(() {
      categoryIndex = (categoryScrollController.offset /
              categoryScrollController.position.maxScrollExtent)
          .round();
    });
    newInPageController.addListener(() {
      newInIndex = (newInPageController.page! / 2).round();
    });
    bestSellerPageController.addListener(() {
      bestSellerIndex = (bestSellerPageController.page! / 2).round();
    });
    super.onInit();
  }
}
