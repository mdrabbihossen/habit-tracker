import 'package:flutter/material.dart';
import 'package:habit_tracker/views/details/details_screen.dart';
import 'package:habit_tracker/views/screens/home.dart';

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
      home: const HomeScreen(),
      routes: {
        "details": (context) => const DetailsScreen(),
      },
    );
  }
}
