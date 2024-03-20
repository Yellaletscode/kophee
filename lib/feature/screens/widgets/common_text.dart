import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class CommonText extends StatelessWidget {
  final bool isNewArrival;
  const CommonText({
    super.key, this.isNewArrival = false,
  });

  @override
  Widget build(BuildContext context) {
    return !isNewArrival ? const Text(
      'BEST SELLER',
      style: TextStyle(
        letterSpacing: 1.3,
        fontSize: 16,
        color: Constants.primaryColor,
      )) : const Text(
      'New Arrival',
      style: TextStyle(
        letterSpacing: 1.3,
        fontSize: 16,
        color: Constants.primaryColor,
      ),
    );
  }
}
