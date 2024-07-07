import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/cart/controller/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
