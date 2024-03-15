import 'package:flutter/material.dart';

class HomeScreenFilterWidget extends StatelessWidget {
  const HomeScreenFilterWidget({
    super.key,
    required this.selectedFilter,
    required this.filter,
  });

  final String selectedFilter;
  final String filter;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: const BorderSide(color: Color(0xFFF3F4F6)),
      backgroundColor:
          selectedFilter == filter ? const Color(0xff5A9DE1) : Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      label: Text(filter),
      labelStyle: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
