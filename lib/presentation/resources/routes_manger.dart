import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/cart/controller/cart_binding.dart';
import 'package:lilian_soft_task/presentation/pages/cart/view/cart_view.dart';
import 'package:lilian_soft_task/presentation/pages/home/controller/home_binding.dart';
import 'package:lilian_soft_task/presentation/pages/home/view/home_view.dart';
import 'package:lilian_soft_task/presentation/pages/product/controller/product_binding.dart';
import 'package:lilian_soft_task/presentation/pages/product/view/product_view.dart';

class AppRoutes {
  static const String homeRoute = '/';
  static const String productRoute = '/productRoute';
  static const String cartRoute = '/cartRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeRoute,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: productRoute,
      page: () => const ProductView(),
      binding: ProductBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: cartRoute,
      page: () => const CartView(),
      binding: CartBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
