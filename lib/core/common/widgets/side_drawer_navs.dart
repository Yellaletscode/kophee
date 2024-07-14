import 'package:flutter/material.dart';

class SideDrawerNavLinks extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget Function(BuildContext context) navigateTo;
  const SideDrawerNavLinks({
    super.key,
    required this.title, required this.icon, required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(icon),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: navigateTo)),
      title: Text(title),
      titleTextStyle: const TextStyle(fontSize: 22, color: Colors.black),
    );
  }
}
