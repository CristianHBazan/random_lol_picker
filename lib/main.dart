import 'package:flutter/material.dart';
import 'package:random_lol_picker/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random LoL Picker',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/editPreferences': (context) => const EditPreferences(),
        '/charge': (context) => const ChargeScreen(),
        '/randomChamp': (context) => const RandomChamp()
      }
    );
  }
}