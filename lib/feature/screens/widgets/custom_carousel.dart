import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/feature/screens/widgets/shoe_banner.dart';
import '../../../models/product_data_model.dart';

class CustomeCarouselSlidder extends StatefulWidget {
  final List<ProductDataModel> shoeData;

  const CustomeCarouselSlidder({super.key, required this.shoeData});

  @override
  State<CustomeCarouselSlidder> createState() => _CustomeCarouselSlidderState();
}

Timer? _timer;

class _CustomeCarouselSlidderState extends State<CustomeCarouselSlidder> {
  int _activePage = 0;
  late List<ProductDataModel> newShoes;

  final PageController _pageController = PageController(initialPage: 0);

  void startTimer() {

    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.page == newShoes.length - 1) {

        _pageController.animateToPage(
          0,
          duration: const Duration(
            microseconds: 500,
          ),
          curve: Curves.easeInOut,
        );
      } else {

        _pageController.nextPage(
          duration: const Duration(
            milliseconds: 500,
          ),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    newShoes = widget.shoeData
        .where((newShoes) => newShoes.isNewArrival == true)
        .toList()
        .getRange(0, 4)
        .toList();

    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 6,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) => setState(() {
              _activePage = value;
            }),
            itemCount: newShoes.length,
            itemBuilder: (context, index) {
              return ShoesBanner(
                shoeModel: newShoes[index].model,
                imageUrl: newShoes[index].imageUrl,
                price: newShoes[index].price,
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(right: 80),
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                newShoes.length,
                (index) {
                  
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(
                          index,
                          duration: Duration(microseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: _activePage == index
                            ? Constants.primaryColor
                            : const Color.fromARGB(255, 177, 173, 173),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
