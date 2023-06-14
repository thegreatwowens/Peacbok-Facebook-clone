import 'package:Team_Asia_App/Script/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(InternShip());

class InternShip extends StatelessWidget {
  const InternShip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
