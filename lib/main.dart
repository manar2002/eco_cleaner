import 'package:eco_cleaner/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eco Cleaner',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const NavBarView(),
    );
  }
}

String getAsset(String image) => 'assets/images/$image.png';