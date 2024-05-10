import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/core/common/widgets/custom_app_bar.dart';

import 'widgets/profile_info_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          50,
        ),
        child: CustomAppBar(
          icon: Icons.notifications,
          mainTitle: 'Profile',
          onMenuPressed: () => print('menu'),
          onPressed: () => print('Notification'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Constants.verticalSpace,
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 67,
                        backgroundImage: AssetImage(
                          'assets/images/user.png',
                        ),
                      ),
                      Positioned(
                        bottom: -15,
                        left: 50,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_a_photo,
                            color: Constants.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Abenezer Gena',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Constants.verticalSpace2,
            const Text(
              'Full Name',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Constants.verticalSpace2,
            const ProfileInfoContainer(profileInfo: 'Abenezer Gena',),
            Constants.verticalSpace2,
                        const Text(
              'Email Address',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Constants.verticalSpace2,
            const ProfileInfoContainer(
              profileInfo: 'abenigena@gmail.com',
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
