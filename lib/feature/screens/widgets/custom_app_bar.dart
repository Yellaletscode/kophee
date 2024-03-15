import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/feature/screens/widgets/appbar_icon_btn_widget.dart';
import 'package:kophee/feature/screens/widgets/appbar_title_widget.dart';

class CustomAppBar extends StatelessWidget {
  final bool isSubtitle;
  final String mainTitle;
  final IconData icon;
  final Function() onPressed;
  final Function() onMenuPressed;

  const CustomAppBar({
    super.key,
    this.isSubtitle = false,
    required this.mainTitle,
    required this.icon,
    required this.onPressed,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.scaffoldBackgroundColor,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarIconBtnWidget(
              icon: Icons.menu,
              left: 10,
              onPressed: onMenuPressed,
            ),
            AppbarTitleWidget(
              mainTitle: mainTitle,
              isThereSubTitle: isSubtitle,
            ),
            AppBarIconBtnWidget(
              icon: icon,
              right: 10,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
