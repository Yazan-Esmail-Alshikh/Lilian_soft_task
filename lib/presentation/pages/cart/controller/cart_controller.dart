import 'package:get/get.dart';

class CartController extends GetxController {
  final RxList<int> _products = <int>[].obs;
  final RxInt _total = 0.obs;

  List<int> get products => _products;
  int get total => _total.value;

  set products(value) => _products.value = value;

  set total(value) => _total.value = value;

  onAddToCart(int productQuantity) {
    products.add(productQuantity);
    getTotal();
  }

  onRemoveFromCart(int index) {
    products.removeAt(index);
    _products.refresh();
    getTotal();
  }

  onRemoveQuantity(int index) {
    if (products[index] != 1) {
      products[index] -= 1;
    } else {
      products.removeAt(index);
    }
    _products.refresh();
    getTotal();
  }

  onAddQuantity(int index) {
    products[index] += 1;
    _products.refresh();
    getTotal();
  }

  getTotal() {
    total = 0;
    for (var element in products) {
      total += element;
    }
    total = total * 29;
    _total.refresh();
  }
}
