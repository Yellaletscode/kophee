import 'package:flutter/material.dart';
import '../data/products.dart';
import '/models/product_data_model.dart';
import '/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductDataModel> cart = [];

  void addProductToCart(ProductDataModel product) {
    cart.add(product);
    notifyListeners();
  }

  void removeProductFromCart(ProductDataModel product) {
    cart.remove(product);
    notifyListeners();
  }
}
