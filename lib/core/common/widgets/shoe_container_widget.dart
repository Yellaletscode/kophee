import 'package:flutter/material.dart';
import 'package:kophee/models/product_data_model.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../../../feature/screens/widgets/common_text.dart';

class ShoeContainerWidget extends StatelessWidget {
//  final String? shoeImageUrl;
//  final String? shoeBrand;
//  final double? shoePrice;

 final bool isGrid;
 

 
  const ShoeContainerWidget({
    super.key,
    // this.shoeImageUrl,
    // this.shoeBrand,
    // this.shoePrice,
    this.isGrid = false,
  });

  @override
  Widget build(BuildContext context) {
    final shoesData = Provider.of<ProductDataModel>(context);
    return Container(
      
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        color: Constants.pureWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       !isGrid ?  Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {

                    shoesData.toggleFavoriteStatus();
                    
                  },
                  child: !shoesData.isFavourite
                      ? const Icon(Icons.favorite_outline)
                      : const Icon(
                          Icons.favorite,
                          color: Constants.primaryColor,
                        ),
                ),
                Image.asset(
                  shoesData.imageUrl,
                  width: MediaQuery.of(context).size.width * 0.38,
                  // fit: BoxFit.cover,
                ),
              ],
            ),
           )  :
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  shoesData.toggleFavoriteStatus();
                },
                child: !shoesData.isFavourite
                    ? const Icon(Icons.favorite_outline)
                    : const Icon(
                        Icons.favorite,
                        color: Constants.primaryColor,
                      ),
              ),
              Flexible(
                child: Image.asset(
                  shoesData.imageUrl,
                  width: MediaQuery.of(context).size.width * 0.38,
                  // fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),
          const CommonText(),
          const SizedBox(
            height: 10,
          ),
          Text(
            shoesData.model,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.3,
            ),
          ),
          Text(
            '\$${shoesData.price}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
