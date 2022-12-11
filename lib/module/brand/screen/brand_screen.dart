import 'package:flutter/material.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Brand',
        style: TextStyle(
          color: Colors.red,
          fontSize: 22,
        ),
      ),
    );
  }
}
