import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/feature/screens/mobile_screen.dart';
import 'package:kophee/feature/screens/shoe_detail.dart';
import 'package:kophee/feature/screens/widgets/custom_app_bar.dart';
import 'package:kophee/feature/screens/widgets/home_screen_filter_widget.dart';
import 'package:kophee/feature/screens/widgets/search_widget.dart';
import 'package:kophee/feature/screens/widgets/shoe_container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> filters = const [
    'All',
    'Adidas',
    'Nike',
    'Puma',
    'Converse'
  ];

  late String selectedFilter;

  @override
  void initState() {
    super.initState();

    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.scaffoldBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: CustomAppBar(
            mainTitle: 'Jigjiga, Ethiopia',
            isSubtitle: true,
            icon: Icons.shopping_bag,
            onMenuPressed: () => print('menu'),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Constants.verticalSpace,
                const SearchWidget(),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: filters.length,
                    itemBuilder: (context, index) {
                      final filter = filters[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedFilter = filter;
                            });
                          },
                          child: HomeScreenFilterWidget(
                            selectedFilter: selectedFilter,
                            filter: filter,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const ShoeStatus(
                  shoeStatus: 'Popular Shoes',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShoeDetail(),
                            )),
                        child: const ShoeContainerWidget(
                          shoeImageUrl: Constants.nikeshoe2,
                          shoeBrand: 'Nike Air Max',
                          shoePrice: '110.9',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShoeDetail(),
                            )),
                        child: const ShoeContainerWidget(
                          shoeImageUrl: Constants.nikeshoe5,
                          shoeBrand: 'Nike Jordan',
                          shoePrice: '410.6',
                        ),
                      ),
                    ],
                  ),
                ),
                const ShoeStatus(
                  shoeStatus: 'New Arrivals',
                ),
                Container(
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BEST CHOICE',
                            style: TextStyle(color: Constants.primaryColor),
                          ),
                          Text(
                            'Nike Air Jordan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.3,
                            ),
                          ),
                          Text(
                            '\$849.8',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Image.asset(
                          Constants.nikeshoe2,
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
