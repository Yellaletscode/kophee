import 'package:flutter/material.dart';
import 'package:kophee/core/constants/constants.dart';
import 'package:kophee/feature/screens/widgets/appbar_icon_btn_widget.dart';
import 'package:kophee/feature/screens/widgets/appbar_title_widget.dart';

class CustomAppBar extends StatelessWidget {
  final bool needsADrawer;
  final bool isSubtitle;
  final String mainTitle;
  final IconData? icon;
  final IconData leadingIcon;
  final Function() onPressed;
  final Function() onMenuPressed;

  const CustomAppBar({
    super.key,
    this.isSubtitle = false,
    required this.mainTitle,
    this.icon = Icons.shopping_bag,
    this.leadingIcon = Icons.menu,
    required this.onPressed,
    required this.onMenuPressed,
    this.needsADrawer = false,
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
              icon: leadingIcon,
              left: 10,
              onPressed: onMenuPressed,
            ),
            AppbarTitleWidget(
              mainTitle: mainTitle,
              isThereSubTitle: isSubtitle,
            ),
            AppBarIconBtnWidget(
              icon: icon as IconData,
              right: 10,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
