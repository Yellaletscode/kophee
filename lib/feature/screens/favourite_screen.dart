import 'package:flutter/material.dart';

import 'package:kophee/feature/screens/widgets/Common_text.dart';
import 'package:kophee/models/product_data_model.dart';
import 'package:kophee/providers/product_provider.dart';
import 'package:provider/provider.dart';
import '../../core/common/widgets/shoe_container_widget.dart';
import '../../core/constants/constants.dart';
import '../../core/common/widgets/custom_app_bar.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteShoes = Provider.of<ProductProvider>(context)
        .shoeItems
        .expand((shoes) => shoes.data)
        .where((shoes) => shoes.isFavourite == true)
        .toList();

    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50),
        child: CustomAppBar(
          mainTitle: 'Favourite',
          icon: Icons.favorite_outline,
          onMenuPressed: () {},
          onPressed: () {},
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        // padding: const EdgeInsets.only(left: 15,top: 20),
        itemCount: favouriteShoes.length,
        itemBuilder: (context, index) {
          

          print('these are prod ${favouriteShoes.length}');
          // return products[index].data[index].isFavour'ite
          return ChangeNotifierProvider<ProductDataModel>.value(
            value: favouriteShoes[index],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ShoeContainerWidget(
                isGrid: true,
                // shoeBrand: favouriteShoes[index].title,
                // shoePrice: favouriteShoes[index].price,
                // shoeImageUrl: favouriteShoes[index].imageUrl,
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          
 
        ),
      ),
    );
  }
}
