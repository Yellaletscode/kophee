import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'common_text.dart';

class ShoeContainerWidget extends StatelessWidget {
  final String shoeImageUrl;
  final String shoeBrand;
  final String shoePrice;
  const ShoeContainerWidget({
    super.key,
    required this.shoeImageUrl,
    required this.shoeBrand,
    required this.shoePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Constants.pureWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              shoeImageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const CommonText(),
          const SizedBox(
            height: 10,
          ),
          Text(
            shoeBrand,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.3,
            ),
          ),
          Text(
            '\$$shoePrice',
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
