import 'package:flutter/material.dart';
import 'package:kophee/core/constants/data/products.dart';
import 'package:kophee/feature/screens/widgets/Common_text.dart';
import '../../core/constants/constants.dart';
import 'widgets/custom_app_bar.dart';

class FavouriteScreen extends StatelessWidget {
  final favouriteProducts = products
      .expand((product) => product['data'])
      .where((shoe) => shoe['isFavourite']);
  final prod = products
      .expand(
        (product) => product['data'],
      )
      .toList(growable: true);
  FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: GridView.builder(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          itemCount: favouriteProducts.length,
          itemBuilder: (context, index) {
            final shoe = favouriteProducts.elementAt(index);

            print('these are prod ${prod.length}');
            return ShoeContainer(
              title: shoe['title'],
              price: shoe['price'],
              imageUrl: shoe['imageUrl'],
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.5,
          ),
        ),
      ),
    );
  }
}

class ShoeContainer extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;
  const ShoeContainer({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Constants.primaryColor,
            ),
            onPressed: () => print('favourite'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CommonText(),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
