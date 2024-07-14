import 'package:flutter/material.dart';

class ProductDataModel extends ChangeNotifier {
  final int id;
  final String title;
  final String model;
  final List color;
  final dynamic price;
  final String imageUrl;
  final List sizes;
  bool isFavourite;
  final bool isNewArrival;
  final String description;

  ProductDataModel({
    required this.id,
    required this.title,
    required this.model,
    required this.color,
    required this.price,
    required this.imageUrl,
    required this.sizes,
    this.isFavourite = false,
    required this.description,
    required this.isNewArrival,
  });

  void toggleFavoriteStatus() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
