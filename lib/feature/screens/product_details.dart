import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/feature/screens/cart_screen.dart';

class ProductsDetail extends StatelessWidget {
  // final Map<String, Object> product;
  const ProductsDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackgroundColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              )),
          child: const Center(child: Text('Add To Cart')),
        )
      ]),
    );
  }
}
