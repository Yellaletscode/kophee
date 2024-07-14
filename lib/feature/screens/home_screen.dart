import 'package:flutter/material.dart';
import 'package:kophee/core/common/main_drawer.dart';
import 'package:kophee/feature/screens/widgets/appbar_title_widget.dart';
import 'package:kophee/feature/screens/widgets/custom_carousel.dart';

import '/core/constants/constants.dart';
import '/feature/screens/mobile_screen.dart';
import '/feature/screens/shoe_detail.dart';
import '/feature/screens/shoe_status_screen.dart';

import '/feature/screens/widgets/home_screen_filter_widget.dart';
import '/feature/screens/widgets/search_widget.dart';
import '../../core/common/widgets/shoe_container_widget.dart';
import '/providers/product_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> filters = const ['Nike', 'Adidas', 'Puma', 'Converse'];
  late bool isFavourite;
  late String selectedFilter;
  bool _isInit = true;
  var _isLoading;

//////////////////////////////////

  @override
  void initState() {
    super.initState();

    Provider.of<ProductProvider>(context, listen: false).loadShoesData();
    Provider.of<ProductProvider>(context, listen: false).loadOfflineShoes();

    selectedFilter = filters[0];
    isFavourite = false;
  }

  @override
  Widget build(BuildContext context) {
    final shoesInfo = Provider.of<ProductProvider>(context);
    // final loadedShoesFromDevice = shoesInfo.shoeItems;
    // final loadedShoesFromApi =
    //     Provider.of<ProductProvider>(context).shoeItemsFromApi;
    _isLoading = Provider.of<ProductProvider>(context).isLoading;
    bool isApi = Provider.of<ProductProvider>(context).isApi;
    final loadedShoes = shoesInfo.shoeItemsFromApi;
    print(isApi);
    final shoeData = loadedShoes.expand((shoeData) => shoeData.data).toList();
    print(shoeData.length);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.scaffoldBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: AppBar(
            backgroundColor: Constants.scaffoldBackgroundColor,
            centerTitle: true,
            titleSpacing: 1.3,
            title: const AppbarTitleWidget(
              isThereSubTitle: true,
              mainTitle: 'Jigjiga, Ethiopia',
            ),
          ),
        ),
        drawer: MainDrawer(),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Constants.verticalSpace,
                      const SearchWidget(),
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(10),
                          scrollDirection: Axis.horizontal,
                          itemCount: loadedShoes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      selectedFilter =
                                          loadedShoes[index].company;
                                    },
                                  );
                                },
                                child: HomeScreenFilterWidget(
                                  selectedFilter: selectedFilter,
                                  filter: loadedShoes[index].company,
                                  brandUrl: loadedShoes[index].companyLogoUrl,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      ShoeStatus(
                        shoeStatus: 'Popular Shoes',
                        onpressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SheoStatusScreen(
                              title: 'Poular Shoes',
                              isPopular: true,
                              data: shoeData,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.6,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: shoeData.length,
                            itemBuilder: (context, index) {
                              return ChangeNotifierProvider.value(
                                value: shoeData[index],
                                child: GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ShoeDetail(
                                        product: shoeData[index],
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: ShoeContainerWidget(),
                                  ),
                                ),
                              );
                            }),
                      ),
                      ShoeStatus(
                        shoeStatus: 'New Arrivals',
                        onpressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SheoStatusScreen(
                              title: 'New Arrivals',
                              isPopular: false,
                              data: shoeData,
                            ),
                          ),
                        ),
                      ),
                      CustomeCarouselSlidder(shoeData: shoeData),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
