import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kophee/feature/screens/widgets/common_text.dart';

import '../../../core/constants/constants.dart';

class ShoesBanner extends StatelessWidget {
  final String shoeModel;
  final String imageUrl;
  final double price;
  const ShoesBanner({
    super.key,
    required this.shoeModel,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveFontSize = MediaQuery.of(context).size.width * 0.047;
    print('font $responsiveFontSize');
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
              const CommonText(
                isNewArrival: true,
              ),
              Text(
                // textScaler: TextScaler.linear(1.38),
                shoeModel,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsiveFontSize,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                '\$$price',
                // textScaler: TextScaler.linear(1.38),
                style: TextStyle(
                  fontSize: responsiveFontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 100,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
