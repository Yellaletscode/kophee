class ProductDataModel {
  final String title;
  final String model;
  final String color;
  final double price;
  final String imageUrl;
  final List<int> sizes;
  final bool isFavourite;
  final String description;

  ProductDataModel({
    required this.title,
    required this.model,
    required this.color,
    required this.price,
    required this.imageUrl,
    required this.sizes,
    required this.isFavourite,
    required this.description,
  });
}
