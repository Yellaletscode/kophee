import 'package:flutter/material.dart';
import 'package:kophee/feature/screens/widgets/common_text.dart';

import '../../../core/constants/constants.dart';


class ShoesBanner extends StatelessWidget {
  final String shoeModel;
  final String imageUrl;
  final double price;
  const ShoesBanner({
    super.key, required this.shoeModel, required this.imageUrl, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(
        left: 20,
        right: 5,
      ),
      decoration: const BoxDecoration(
        color: Constants.pureWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              const Spacer(),
              const CommonText(isNewArrival: true,),
              Text(
                shoeModel,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
            ],
          ),
          Flexible(
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
