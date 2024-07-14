import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/data/products.dart';
import 'package:kophee/models/product_model.dart';
import '../models/product_data_model.dart';
import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
  // List<ProductModel> _shoesItems1 = [
  //   ProductModel(
  //     id: products[0]['id'],
  //     company: products[0]['company'],
  //     companyLogoUrl: products[0]['companyLogoUrl'],
  //     data: [
  //       ProductDataModel(
  //         id: products[0]['data'][0]['id'],
  //         title: products[0]['data'][0]['title'],
  //         model: products[0]['data'][0]['model'],
  //         color: products[0]['data'][0]['color'],
  //         price: products[0]['data'][0]['price'],
  //         imageUrl: products[0]['data'][0]['imageUrl'],
  //         sizes: products[0]['data'][0]['sizes'],
  //         description: products[0]['data'][0]['description'],
  //         isNewArrival: products[0]['data'][0]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[0]['data'][1]['id'],
  //         title: products[0]['data'][1]['title'],
  //         model: products[0]['data'][1]['model'],
  //         color: products[0]['data'][1]['color'],
  //         price: products[0]['data'][1]['price'],
  //         imageUrl: products[0]['data'][1]['imageUrl'],
  //         sizes: products[0]['data'][1]['sizes'],
  //         description: products[0]['data'][1]['description'],
  //         isNewArrival: products[0]['data'][1]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[0]['data'][2]['id'],
  //         title: products[0]['data'][2]['title'],
  //         model: products[0]['data'][2]['model'],
  //         color: products[0]['data'][2]['color'],
  //         price: products[0]['data'][2]['price'],
  //         imageUrl: products[0]['data'][2]['imageUrl'],
  //         sizes: products[0]['data'][2]['sizes'],
  //         description: products[0]['data'][2]['description'],
  //         isNewArrival: products[0]['data'][2]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[0]['data'][3]['id'],
  //         title: products[0]['data'][3]['title'],
  //         model: products[0]['data'][3]['model'],
  //         color: products[0]['data'][3]['color'],
  //         price: products[0]['data'][3]['price'],
  //         imageUrl: products[0]['data'][3]['imageUrl'],
  //         sizes: products[0]['data'][3]['sizes'],
  //         description: products[0]['data'][3]['description'],
  //         isNewArrival: products[0]['data'][3]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[0]['data'][4]['id'],
  //         title: products[0]['data'][4]['title'],
  //         model: products[0]['data'][4]['model'],
  //         color: products[0]['data'][4]['color'],
  //         price: products[0]['data'][4]['price'],
  //         imageUrl: products[0]['data'][4]['imageUrl'],
  //         sizes: products[0]['data'][2]['sizes'],
  //         description: products[0]['data'][4]['description'],
  //         isNewArrival: products[0]['data'][4]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[0]['data'][5]['id'],
  //         title: products[0]['data'][5]['title'],
  //         model: products[0]['data'][5]['model'],
  //         color: products[0]['data'][5]['color'],
  //         price: products[0]['data'][5]['price'],
  //         imageUrl: products[0]['data'][5]['imageUrl'],
  //         sizes: products[0]['data'][5]['sizes'],
  //         description: products[0]['data'][5]['description'],
  //         isNewArrival: products[0]['data'][5]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[0]['data'][6]['id'],
  //         title: products[0]['data'][6]['title'],
  //         model: products[0]['data'][6]['model'],
  //         color: products[0]['data'][6]['color'],
  //         price: products[0]['data'][6]['price'],
  //         imageUrl: products[0]['data'][6]['imageUrl'],
  //         sizes: products[0]['data'][6]['sizes'],
  //         description: products[0]['data'][6]['description'],
  //         isNewArrival: products[0]['data'][6]['isNewarrival'],
  //       ),
  //     ],
  //   ),
  //   ProductModel(
  //     id: products[1]['id'],
  //     company: products[1]['company'],
  //     companyLogoUrl: products[1]['companyLogoUrl'],
  //     data: [
  //       ProductDataModel(
  //         id: products[1]['data'][0]['id'],
  //         title: products[1]['data'][0]['title'],
  //         model: products[1]['data'][0]['model'],
  //         color: products[1]['data'][0]['color'],
  //         price: products[1]['data'][0]['price'],
  //         imageUrl: products[1]['data'][0]['imageUrl'],
  //         sizes: products[1]['data'][0]['sizes'],
  //         description: products[1]['data'][0]['description'],
  //         isNewArrival: products[1]['data'][0]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[1]['data'][1]['id'],
  //         title: products[1]['data'][1]['title'],
  //         model: products[1]['data'][1]['model'],
  //         color: products[1]['data'][1]['color'],
  //         price: products[1]['data'][1]['price'],
  //         imageUrl: products[1]['data'][1]['imageUrl'],
  //         sizes: products[1]['data'][1]['sizes'],
  //         description: products[1]['data'][1]['description'],
  //         isNewArrival: products[1]['data'][1]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[1]['data'][2]['id'],
  //         title: products[1]['data'][2]['title'],
  //         model: products[1]['data'][2]['model'],
  //         color: products[1]['data'][2]['color'],
  //         price: products[1]['data'][2]['price'],
  //         imageUrl: products[1]['data'][2]['imageUrl'],
  //         sizes: products[1]['data'][2]['sizes'],
  //         description: products[1]['data'][2]['description'],
  //         isNewArrival: products[1]['data'][2]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[1]['data'][3]['id'],
  //         title: products[1]['data'][3]['title'],
  //         model: products[1]['data'][3]['model'],
  //         color: products[1]['data'][3]['color'],
  //         price: products[1]['data'][3]['price'],
  //         imageUrl: products[1]['data'][3]['imageUrl'],
  //         sizes: products[1]['data'][3]['sizes'],
  //         description: products[1]['data'][3]['description'],
  //         isNewArrival: products[1]['data'][3]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[1]['data'][4]['id'],
  //         title: products[1]['data'][4]['title'],
  //         model: products[1]['data'][4]['model'],
  //         color: products[1]['data'][4]['color'],
  //         price: products[1]['data'][4]['price'],
  //         imageUrl: products[1]['data'][4]['imageUrl'],
  //         sizes: products[1]['data'][4]['sizes'],
  //         description: products[1]['data'][4]['description'],
  //         isNewArrival: products[1]['data'][4]['isNewarrival'],
  //       ),
  //     ],
  //   ),
  //   ProductModel(
  //     id: products[2]['id'],
  //     company: products[2]['company'],
  //     companyLogoUrl: products[2]['companyLogoUrl'],
  //     data: [
  //       ProductDataModel(
  //         id: products[2]['data'][0]['id'],
  //         title: products[2]['data'][0]['title'],
  //         model: products[2]['data'][0]['model'],
  //         color: products[2]['data'][0]['color'],
  //         price: products[2]['data'][0]['price'],
  //         imageUrl: products[2]['data'][0]['imageUrl'],
  //         sizes: products[2]['data'][0]['sizes'],
  //         description: products[2]['data'][0]['description'],
  //         isNewArrival: products[2]['data'][0]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[2]['data'][1]['id'],
  //         title: products[2]['data'][1]['title'],
  //         model: products[2]['data'][1]['model'],
  //         color: products[2]['data'][1]['color'],
  //         price: products[2]['data'][1]['price'],
  //         imageUrl: products[2]['data'][1]['imageUrl'],
  //         sizes: products[2]['data'][1]['sizes'],
  //         description: products[2]['data'][1]['description'],
  //         isNewArrival: products[2]['data'][1]['isNewarrival'],
  //       ),
  //       ProductDataModel(
  //         id: products[1]['data'][2]['id'],
  //         title: products[2]['data'][2]['title'],
  //         model: products[2]['data'][2]['model'],
  //         color: products[2]['data'][2]['color'],
  //         price: products[2]['data'][2]['price'],
  //         imageUrl: products[2]['data'][2]['imageUrl'],
  //         sizes: products[2]['data'][2]['sizes'],
  //         isNewArrival: products[2]['data'][2]['isNewarrival'],
  //         description: products[2]['data'][2]['description'],
  //       ),
  //       ProductDataModel(
  //         id: products[2]['data'][3]['id'],
  //         title: products[2]['data'][3]['title'],
  //         model: products[2]['data'][3]['model'],
  //         color: products[2]['data'][3]['color'],
  //         price: products[2]['data'][3]['price'],
  //         imageUrl: products[2]['data'][3]['imageUrl'],
  //         isNewArrival: products[2]['data'][3]['isNewarrival'],
  //         sizes: products[2]['data'][3]['sizes'],
  //         description: products[2]['data'][3]['description'],
  //       ),
  //       ProductDataModel(
  //         id: products[2]['data'][4]['id'],
  //         title: products[2]['data'][4]['title'],
  //         model: products[2]['data'][4]['model'],
  //         color: products[2]['data'][4]['color'],
  //         price: products[2]['data'][4]['price'],
  //         imageUrl: products[2]['data'][4]['imageUrl'],
  //         sizes: products[2]['data'][2]['sizes'],
  //         isNewArrival: products[2]['data'][4]['isNewarrival'],
  //         description: products[2]['data'][4]['description'],
  //       ),
  //       ProductDataModel(
  //         id: products[2]['data'][5]['id'],
  //         title: products[2]['data'][5]['title'],
  //         model: products[2]['data'][5]['model'],
  //         color: products[2]['data'][5]['color'],
  //         price: products[2]['data'][5]['price'],
  //         isNewArrival: products[2]['data'][5]['isNewarrival'],
  //         imageUrl: products[2]['data'][5]['imageUrl'],
  //         sizes: products[2]['data'][5]['sizes'],
  //         description: products[2]['data'][5]['description'],
  //       ),
  //       ProductDataModel(
  //         id: products[2]['data'][6]['id'],
  //         title: products[2]['data'][6]['title'],
  //         model: products[2]['data'][6]['model'],
  //         isNewArrival: products[2]['data'][6]['isNewarrival'],
  //         color: products[2]['data'][6]['color'],
  //         price: products[2]['data'][6]['price'],
  //         imageUrl: products[2]['data'][6]['imageUrl'],
  //         sizes: products[2]['data'][6]['sizes'],
  //         description: products[2]['data'][6]['description'],
  //       ),
  //     ],
  //   ),
  //   ProductModel(
  //     id: products[3]['id'],
  //     company: products[3]['company'],
  //     companyLogoUrl: products[3]['companyLogoUrl'],
  //     data: [],
  //   ),
  //   ProductModel(
  //     id: products[4]['id'],
  //     company: products[4]['company'],
  //     companyLogoUrl: products[4]['companyLogoUrl'],
  //     data: [],
  //   ),
  // ];
  bool isLoading = false;
  bool isApi = false;
  List<ProductModel> _shoesItems = [];
  List<ProductModel> _allShoesDataFromApi = [];
  final List<ProductDataModel> favourites = [];
  List<ProductModel> get shoeItems => _shoesItems;
  List<ProductModel> get shoeItemsFromApi => _allShoesDataFromApi;
  void loadOfflineShoes() {
    final List<ProductModel> loadedShoes = [];
    for (final shoes in products) {
      final {
        'id': brandId,
        'company': company,
        'companyLogoUrl': companyLogoUrl,
        'data': data as List<dynamic>,
      } = shoes;
      final List<ProductDataModel> shoesDataModel = [];
      for (final shoesData in data) {
        final {
          'id': id,
          'title': title,
          'model': model,
          'color': color,
          'price': price,
          'imageUrl': imageUrl,
          'sizes': sizes,
          'isNewarrival': isNewarrival,
          'description': description,
        } = shoesData;

        shoesDataModel.add(ProductDataModel(
            id: id,
            title: title,
            model: model,
            color: color,
            price: price,
            imageUrl: imageUrl,
            sizes: sizes,
            description: description,
            isNewArrival: isNewarrival));
        // print(id);
      }
      loadedShoes.add(ProductModel(
          id: brandId,
          company: company,
          companyLogoUrl: companyLogoUrl,
          data: shoesDataModel));
    }
    _shoesItems = loadedShoes;
  }

  Future<void> loadShoesData() async {
    print('fetching');
    final url = Uri.http('192.168.56.1:8000', 'shoes');
    // final url = Uri.http('192.168.10.26:5500', '/api/products.json');

    try {
      isLoading = true;
      isApi = true;
      final response = await http.get(url);
      print(response.statusCode);

// check if response.statusCode != 200
      if (response.statusCode == 200) {
        final extractedShoesData = jsonDecode(response.body) as List<dynamic>;
// empty list to add all of the loaded shoes
        final List<ProductModel> loadedShoes = [];
        for (final shoes in extractedShoesData) {
          final {
            'id': brandId,
            'company': company,
            'companyLogoUrl': companyLogoUrl,
            'data': data as List<dynamic>,
          } = shoes;
          final List<ProductDataModel> shoesDataModel = [];
          for (final shoesData in data) {
            final {
              'id': id,
              'title': title,
              'model': model,
              'color': color,
              'price': price,
              'imageUrl': imageUrl,
              'sizes': sizes,
              'isNewarrival': isNewarrival,
              'description': description,
            } = shoesData;
            // print(price);
            // final int price1 = price;
            // print(price1.toDouble());
            shoesDataModel.add(ProductDataModel(
                id: id,
                title: title,
                model: model,
                color: color,
                price: price,
                imageUrl: imageUrl,
                sizes: sizes,
                description: description,
                isNewArrival: isNewarrival));
            // print(id);
          }
          loadedShoes.add(ProductModel(
              id: brandId,
              company: company,
              companyLogoUrl: companyLogoUrl,
              data: shoesDataModel));
        }
        _allShoesDataFromApi = loadedShoes;

        print(_allShoesDataFromApi[0].companyLogoUrl);
        // print(_loadedShoes[1].company);
        notifyListeners();
      }
      isApi = false;
      notifyListeners();
    } catch (error) {
      isLoading = false;
      isApi = false;
      print('error1 $error');
      notifyListeners();
    } finally {
      isLoading = false;
    }
  }

  void addProduct() {
    notifyListeners();
  }
}
