import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/product/controller/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
