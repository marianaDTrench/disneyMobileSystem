import 'package:flutter/material.dart';
import 'screens/princess_list_screen.dart';

void main() {
  runApp(const PrincessExplorerApp());
}

class PrincessExplorerApp extends StatelessWidget {
  const PrincessExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Princess Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Neutral seed so the app feels calm
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pinkAccent, 
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        // Global font style to keep things tidy
        fontFamily: 'sans-serif', 
      ),
      home: const PrincessListScreen(),
    );
  }
}