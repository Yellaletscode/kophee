import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/core/common/widgets/custom_app_bar.dart';
import 'package:kophee/core/common/widgets/shoe_container_widget.dart';
import 'package:kophee/models/product_data_model.dart';
import 'package:provider/provider.dart';

import 'shoe_detail.dart';

class SheoStatusScreen extends StatelessWidget {
  final String title;
  final bool isPopular;
  final List<ProductDataModel> data;
  const SheoStatusScreen(
      {super.key,
      required this.title,
      required this.isPopular,
      required this.data});

  @override
  Widget build(BuildContext context) {
    final newArrival =
        data.where((newArrival) => newArrival.isNewArrival == true).toList();
    final screenSize = MediaQuery.of(context).size;

    print(data);
    return Scaffold(
      backgroundColor: Constants.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: CustomAppBar(
          mainTitle: title,
          leadingIcon: Icons.arrow_back,
          onPressed: () {},
          onMenuPressed: () => Navigator.pop(context),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
           
         
          ),
          itemCount: isPopular ? data.length : newArrival.length,
          itemBuilder: (context, index) {
            return ChangeNotifierProvider.value(
              value: data[index],
              child: GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShoeDetail(
                              product:
                                  isPopular ? data[index] : newArrival[index],
                            ))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ShoeContainerWidget(
                    isGrid: true,
                    shoeImageUrl: isPopular
                        ? data[index].imageUrl
                        : newArrival[index].imageUrl,
                    shoeBrand:
                        isPopular ? data[index].model : newArrival[index].model,
                    shoePrice:
                        isPopular ? data[index].price : newArrival[index].price,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
