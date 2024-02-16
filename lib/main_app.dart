import 'package:flutter/material.dart';
import 'home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 217, 251),
        // appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 255, 0, 0)),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 70, 0, 0)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 41, 15, 46)
          ),
          bodySmall: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 124, 98, 129)
          ),
        ),
      ),
    );
  }
}