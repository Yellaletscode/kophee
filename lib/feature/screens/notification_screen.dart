import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/core/common/widgets/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
          mainTitle: 'Notifications',
          onMenuPressed: () => print('menu'),
          onPressed: () => print('Notification'),
        ),
      ),
    );
  }
}
