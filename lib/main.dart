import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const DulceAntojoApp());
}

class DulceAntojoApp extends StatelessWidget {
  const DulceAntojoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dulce Antojo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD81B60), // rosa frambuesa
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF8F0), // color crema
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFD81B60),
          foregroundColor: Colors.white,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
