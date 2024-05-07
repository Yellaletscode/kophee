import 'package:flutter/material.dart';

class ProfileInfoContainer extends StatelessWidget {
  final String profileInfo;
  const ProfileInfoContainer({
    super.key, required this.profileInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child:  Text(
        profileInfo,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
