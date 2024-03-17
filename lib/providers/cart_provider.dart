import 'package:flutter/material.dart';
import 'package:kophee/models/product_data_model.dart';
import 'package:kophee/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addProductToCart(Map<String, dynamic> product) {
    cart.add(product);
  }

  void removeProductFromCart(Map<String, dynamic> product) {
    cart.remove(product);
  }
}
