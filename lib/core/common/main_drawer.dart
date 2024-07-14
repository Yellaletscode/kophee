import 'package:flutter/material.dart';
import 'package:kophee/feature/screens/cart_screen.dart';
import 'package:kophee/feature/screens/favourite_screen.dart';
import 'package:kophee/feature/screens/home_screen.dart';
import 'package:kophee/feature/screens/profile_screen.dart';
import 'widgets/side_drawer_navs.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Color.fromARGB(146, 198, 198, 198),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ SizedBox(height: 50,),
          DrawerHeader(
              child: Column(
            children: [
              
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/user.png',
                ),
              ),
              Text(
                'Abenezer Gena',
                style: TextStyle(fontSize: 20),
              ),
            ],
          )),
          SideDrawerNavLinks(title: 'Profile', icon: Icons.person, navigateTo: (BuildContext context) => const ProfileScreen(),),
          SideDrawerNavLinks(title: 'Home', icon: Icons.home, navigateTo: (context) =>const  HomeScreen(),),
          SideDrawerNavLinks(title: 'Favourite', icon: Icons.favorite, navigateTo: (context) => const FavouriteScreen(),),
          SideDrawerNavLinks(title: 'My Cart', icon: Icons.shopping_cart, navigateTo: (context) =>const  CartScreen(),),
          SideDrawerNavLinks(title: 'Orders', icon: Icons.shop_2, navigateTo: (context) => const FavouriteScreen(),),
          SideDrawerNavLinks(title: 'Notifications', icon: Icons.notifications, navigateTo: (context) => const FavouriteScreen(),),
           const SizedBox(height: 20,),
       const Divider(),
        // SideDrawerNavLinks(title: 'Log out', icon: Icons.logout, navigateTo: (BuildContext context),),
        ], 
      ),
    );
  }
}

