import 'package:flutter/material.dart';
import 'package:gym_team/page/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.grey[900],
        colorScheme: ColorScheme.dark(
          primary: Colors.grey,
        ),
      ),
      home: const HomePage(),
    );
  }
}