import 'package:flutter/material.dart';
import 'package:kophee/feature/screens/mobile_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('home'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MobileScreen()),
          ),
        ),
      ),
    );
  }
}
