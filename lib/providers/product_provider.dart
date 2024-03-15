import 'package:flutter/material.dart';
import 'package:kophee/core/constants/data/products.dart';
import 'package:kophee/models/product_model.dart';

import '../models/product_data_model.dart';

class ProductProvider with ChangeNotifier {
  final loadedProduct = products.expand((product) => product['data']).toList();
  List<ProductDataModel> productData = [];

  final List<ProductModel> _shoesItems = [];

  ProductProvider() {
    // Initialize _shoesItems and productData here
    initializeProducts();
  }

  void initializeProducts() {
    for (var product in products) {
      for (var data in product['data']) {
        productData.add(
          ProductDataModel(
            title: data['title'],
            model: data['model'],
            color: data['color'],
            price: data['price'],
            imageUrl: data['imageUrl'],
            sizes: data['sizes'],
            isFavourite: data['isFavourite'],
            description: data['description'],
          ),
        );
      }
      _shoesItems.add(
        ProductModel(
          id: product['id'],
          company: product['company'],
          companyLogoUrl: product['companyLogoUrl'],
          data: productData,
        ),
      );
    }
  }

  List<ProductModel> get shoeItems => [..._shoesItems];

  void addProduct() {
    notifyListeners();
  }
}
