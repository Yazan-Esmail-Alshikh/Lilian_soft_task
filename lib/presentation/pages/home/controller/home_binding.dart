import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}