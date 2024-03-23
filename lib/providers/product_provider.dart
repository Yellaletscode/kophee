import 'package:flutter/material.dart';
import 'package:kophee/data/products.dart';
import 'package:kophee/models/product_model.dart';
import '../models/product_data_model.dart';

class ProductProvider with ChangeNotifier {
  // List<ProductDataModel> productData = [];

  // final shoeData = products.map((data) => data['data']).toList();

  final List<ProductModel> _shoesItems = [
    ProductModel(
      id: products[0]['id'],
      company: products[0]['company'],
      companyLogoUrl: products[0]['companyLogoUrl'],
      data: [
        ProductDataModel(
          id: products[0]['data'][0]['id'],
          title: products[0]['data'][0]['title'],
          model: products[0]['data'][0]['model'],
          color: products[0]['data'][0]['color'],
          price: products[0]['data'][0]['price'],
          imageUrl: products[0]['data'][0]['imageUrl'],
          sizes: products[0]['data'][0]['sizes'],
          
          description: products[0]['data'][0]['description'],
          isNewArrival: products[0]['data'][0]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[0]['data'][1]['id'],
          title: products[0]['data'][1]['title'],
          model: products[0]['data'][1]['model'],
          color: products[0]['data'][1]['color'],
          price: products[0]['data'][1]['price'],
          imageUrl: products[0]['data'][1]['imageUrl'],
          sizes: products[0]['data'][1]['sizes'],
          
          description: products[0]['data'][1]['description'],
          isNewArrival: products[0]['data'][1]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[0]['data'][2]['id'],
          title: products[0]['data'][2]['title'],
          model: products[0]['data'][2]['model'],
          color: products[0]['data'][2]['color'],
          price: products[0]['data'][2]['price'],
          imageUrl: products[0]['data'][2]['imageUrl'],
          sizes: products[0]['data'][2]['sizes'],
          
          description: products[0]['data'][2]['description'],
          isNewArrival: products[0]['data'][2]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[0]['data'][3]['id'],
          title: products[0]['data'][3]['title'],
          model: products[0]['data'][3]['model'],
          color: products[0]['data'][3]['color'],
          price: products[0]['data'][3]['price'],
          imageUrl: products[0]['data'][3]['imageUrl'],
          sizes: products[0]['data'][3]['sizes'],
          
          description: products[0]['data'][3]['description'],
          isNewArrival: products[0]['data'][3]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[0]['data'][4]['id'],
          title: products[0]['data'][4]['title'],
          model: products[0]['data'][4]['model'],
          color: products[0]['data'][4]['color'],
          price: products[0]['data'][4]['price'],
          imageUrl: products[0]['data'][4]['imageUrl'],
          sizes: products[0]['data'][2]['sizes'],
          
          description: products[0]['data'][4]['description'],
          isNewArrival: products[0]['data'][4]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[0]['data'][5]['id'],
          title: products[0]['data'][5]['title'],
          model: products[0]['data'][5]['model'],
          color: products[0]['data'][5]['color'],
          price: products[0]['data'][5]['price'],
          imageUrl: products[0]['data'][5]['imageUrl'],
          sizes: products[0]['data'][5]['sizes'],
          
          description: products[0]['data'][5]['description'],
          isNewArrival: products[0]['data'][5]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[0]['data'][6]['id'],
          title: products[0]['data'][6]['title'],
          model: products[0]['data'][6]['model'],
          color: products[0]['data'][6]['color'],
          price: products[0]['data'][6]['price'],
          imageUrl: products[0]['data'][6]['imageUrl'],
          sizes: products[0]['data'][6]['sizes'],
          
          description: products[0]['data'][6]['description'],
          isNewArrival: products[0]['data'][6]['isNewarrival'],
        ),
      ],
    ),
    ProductModel(
      id: products[1]['id'],
      company: products[1]['company'],
      companyLogoUrl: products[1]['companyLogoUrl'],
      data: [
        ProductDataModel(
          id: products[1]['data'][0]['id'],
          title: products[1]['data'][0]['title'],
          model: products[1]['data'][0]['model'],
          color: products[1]['data'][0]['color'],
          price: products[1]['data'][0]['price'],
          imageUrl: products[1]['data'][0]['imageUrl'],
          sizes: products[1]['data'][0]['sizes'],
          
          description: products[1]['data'][0]['description'],
          isNewArrival: products[1]['data'][0]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[1]['data'][1]['id'],
          title: products[1]['data'][1]['title'],
          model: products[1]['data'][1]['model'],
          color: products[1]['data'][1]['color'],
          price: products[1]['data'][1]['price'],
          imageUrl: products[1]['data'][1]['imageUrl'],
          sizes: products[1]['data'][1]['sizes'],
          
          description: products[1]['data'][1]['description'],
          isNewArrival: products[1]['data'][1]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[1]['data'][2]['id'],
          title: products[1]['data'][2]['title'],
          model: products[1]['data'][2]['model'],
          color: products[1]['data'][2]['color'],
          price: products[1]['data'][2]['price'],
          imageUrl: products[1]['data'][2]['imageUrl'],
          sizes: products[1]['data'][2]['sizes'],
          
          description: products[1]['data'][2]['description'],
          isNewArrival: products[1]['data'][2]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[1]['data'][3]['id'],
          title: products[1]['data'][3]['title'],
          model: products[1]['data'][3]['model'],
          color: products[1]['data'][3]['color'],
          price: products[1]['data'][3]['price'],
          imageUrl: products[1]['data'][3]['imageUrl'],
          sizes: products[1]['data'][3]['sizes'],
          
          description: products[1]['data'][3]['description'],
          isNewArrival: products[1]['data'][3]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[1]['data'][4]['id'],
          title: products[1]['data'][4]['title'],
          model: products[1]['data'][4]['model'],
          color: products[1]['data'][4]['color'],
          price: products[1]['data'][4]['price'],
          imageUrl: products[1]['data'][4]['imageUrl'],
          sizes: products[1]['data'][4]['sizes'],
          
          description: products[1]['data'][4]['description'],
          isNewArrival: products[1]['data'][4]['isNewarrival'],
        ),
      ],
    ),
    ProductModel(
      id: products[2]['id'],
      company: products[2]['company'],
      companyLogoUrl: products[2]['companyLogoUrl'],
      data: [
        ProductDataModel(
          id: products[2]['data'][0]['id'],
          title: products[2]['data'][0]['title'],
          model: products[2]['data'][0]['model'],
          color: products[2]['data'][0]['color'],
          price: products[2]['data'][0]['price'],
          imageUrl: products[2]['data'][0]['imageUrl'],
          sizes: products[2]['data'][0]['sizes'],
          
          description: products[2]['data'][0]['description'],
          isNewArrival: products[2]['data'][0]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[2]['data'][1]['id'],
          title: products[2]['data'][1]['title'],
          model: products[2]['data'][1]['model'],
          color: products[2]['data'][1]['color'],
          price: products[2]['data'][1]['price'],
          imageUrl: products[2]['data'][1]['imageUrl'],
          sizes: products[2]['data'][1]['sizes'],
          
          description: products[2]['data'][1]['description'],
          isNewArrival: products[2]['data'][1]['isNewarrival'],
        ),
        ProductDataModel(
          id: products[1]['data'][2]['id'],
          title: products[2]['data'][2]['title'],
          model: products[2]['data'][2]['model'],
          color: products[2]['data'][2]['color'],
          price: products[2]['data'][2]['price'],
          imageUrl: products[2]['data'][2]['imageUrl'],
          sizes: products[2]['data'][2]['sizes'],
          
          isNewArrival: products[2]['data'][2]['isNewarrival'],
          description: products[2]['data'][2]['description'],
        ),
        ProductDataModel(
          id: products[2]['data'][3]['id'],
          title: products[2]['data'][3]['title'],
          model: products[2]['data'][3]['model'],
          color: products[2]['data'][3]['color'],
          price: products[2]['data'][3]['price'],
          imageUrl: products[2]['data'][3]['imageUrl'],
          isNewArrival: products[2]['data'][3]['isNewarrival'],
          sizes: products[2]['data'][3]['sizes'],
          
          description: products[2]['data'][3]['description'],
        ),
        ProductDataModel(
          id: products[2]['data'][4]['id'],
          title: products[2]['data'][4]['title'],
          model: products[2]['data'][4]['model'],
          color: products[2]['data'][4]['color'],
          price: products[2]['data'][4]['price'],
          imageUrl: products[2]['data'][4]['imageUrl'],
          sizes: products[2]['data'][2]['sizes'],
          isNewArrival: products[2]['data'][4]['isNewarrival'],
          
          description: products[2]['data'][4]['description'],
        ),
        ProductDataModel(
          id: products[2]['data'][5]['id'],
          title: products[2]['data'][5]['title'],
          model: products[2]['data'][5]['model'],
          color: products[2]['data'][5]['color'],
          price: products[2]['data'][5]['price'],
          isNewArrival: products[2]['data'][5]['isNewarrival'],
          imageUrl: products[2]['data'][5]['imageUrl'],
          sizes: products[2]['data'][5]['sizes'],
          
          description: products[2]['data'][5]['description'],
        ),
        ProductDataModel(
          id: products[2]['data'][6]['id'],
          title: products[2]['data'][6]['title'],
          model: products[2]['data'][6]['model'],
          isNewArrival: products[2]['data'][6]['isNewarrival'],
          color: products[2]['data'][6]['color'],
          price: products[2]['data'][6]['price'],
          imageUrl: products[2]['data'][6]['imageUrl'],
          sizes: products[2]['data'][6]['sizes'],
          
          description: products[2]['data'][6]['description'],
        ),
      ],
    ),
    ProductModel(
      id: products[3]['id'],
      company: products[3]['company'],
      companyLogoUrl: products[3]['companyLogoUrl'],
      data: [],
    ),
    ProductModel(
      id: products[4]['id'],
      company: products[4]['company'],
      companyLogoUrl: products[4]['companyLogoUrl'],
      data: [],
    ),
  ];

  final List<ProductDataModel> favourites = [];

  // final favouriteProducts = products
  //     .expand((product) => product['data'])
  //     .where((shoe) => shoe['
  //     .toList();

  // void addToFavourite(ProductDataModel shoes) {
  //   favourites.add(shoes);
  //   notifyListeners();
  // }

  // void removeFromFavourite(ProductModel shoes) {
  //   favourites.remove(shoes);
  //   notifyListeners();
  // }


// final shoesData = _shoesItems.expand((shoeData) => shoeData.data).toList();

  List<ProductModel> get shoeItems => _shoesItems;

  void addProduct() {
    notifyListeners();
  }
}
