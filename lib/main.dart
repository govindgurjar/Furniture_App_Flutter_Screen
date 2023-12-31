import 'package:flutter/material.dart';
import 'package:furniture_app/intro_page.dart';
import 'package:furniture_app/models/detail_page/sofa_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture',
      home: IntroPage(),
    );
  }
}
