
import 'package:flutter/material.dart';

import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/core/common/widgets/custom_app_bar.dart';

import 'package:kophee/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  final int? shoeId;
  final int? selectedSize;
  const CartScreen({super.key, this.selectedSize, this.shoeId});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int shoeQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 70),
        child: CustomAppBar(
          icon: Icons.shopping_cart,
          mainTitle: 'Cart',
          onMenuPressed: () => print('menu'),
          onPressed: () => print('cart'),
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView.builder(
                itemCount: Provider.of<CartProvider>(context).cart.length,
                itemBuilder: (context, index) {
                  final shoesInfo = Provider.of<CartProvider>(context);
                  final shoeInCart = shoesInfo.cart;
                   final deleteshoeInCart = shoeInCart
                            .firstWhere((prod) => prod.id == shoeInCart[index].id);
                  return ListTile(
                    title: Text(shoeInCart[index].model),
                    leading: Image.asset(
                      shoeInCart[index].imageUrl,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                       
                    
                        shoesInfo.removeProductFromCart(deleteshoeInCart);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                    subtitle: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Size: ${widget.selectedSize}'),
                        IncreaseOrDecreaseCartItem(
                          removeIcon: Icons.remove,
                          addIcon: Icons.add,
                          quantity: shoeQuantity,
                          decreaseQuantity: () {
                            if (shoeInCart[index].id == deleteshoeInCart.id){ setState(() {
                              shoeQuantity ++;
                            });}
                          },
                          increaseQuantity: () => setState(() {
                            shoeQuantity = shoeQuantity + 1;
                          }),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Constants.pureWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '\$1250',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shopping',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '\$1250',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Cost',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        '\$1250',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () => print('Checkout'),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: const BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Checkout',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class IncreaseOrDecreaseCartItem extends StatelessWidget {
  final IconData removeIcon;
  final IconData addIcon;
  final int quantity;
  final Function() decreaseQuantity;
  final Function() increaseQuantity;

  const IncreaseOrDecreaseCartItem({
    super.key,
    required this.removeIcon,
    required this.addIcon,
    required this.quantity,
    required this.decreaseQuantity,
    required this.increaseQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(removeIcon),
            onPressed: decreaseQuantity,
          ),
          Text('$quantity'),
          IconButton(
            icon: Icon(addIcon),
            onPressed: increaseQuantity,
          ),
        ],
      ),
    );
  }
}
