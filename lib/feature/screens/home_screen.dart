import 'package:flutter/material.dart';
import 'package:kophee/feature/screens/widgets/appbar_title_widget.dart';
import 'package:kophee/feature/screens/widgets/custom_carousel.dart';
import 'package:kophee/models/product_data_model.dart';
import '/core/constants/constants.dart';
import '/feature/screens/mobile_screen.dart';
import '/feature/screens/shoe_detail.dart';
import '/feature/screens/shoe_status_screen.dart';
import '../../core/common/widgets/custom_app_bar.dart';
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
//////////////////////////////////
  @override
  void initState() {
    super.initState();

    selectedFilter = filters[0];
    isFavourite = false;
  }

  @override
  Widget build(BuildContext context) {
    final shoesInfo = Provider.of<ProductProvider>(context);
    final loadedShoes = shoesInfo.shoeItems;
    final shoeData = loadedShoes.expand((shoeData) => shoeData.data).toList();
    return Scaffold(
      backgroundColor: Constants.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50),
        child: AppBar(
          centerTitle: true,
          titleSpacing: 1.3,
          title: const AppbarTitleWidget(
            isThereSubTitle: true,
            mainTitle: 'Jigjiga, Ethiopia',
            
          ),
        ),
        //child: CustomAppBar(
        //   mainTitle: 'Jigjiga, Ethiopia',
        //   isSubtitle: true,
        //   icon: Icons.shopping_bag,
        //   onMenuPressed: () => print('menu'),
        //   onPressed: () {},
        // ),
      ),
      drawer: Drawer(),
      body: Padding(
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
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              selectedFilter = loadedShoes[index].company;
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
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
    );
  }
}
