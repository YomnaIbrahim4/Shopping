import 'package:flutter/material.dart';
import 'package:shopping/screens/home_screens.dart';
import 'core/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      home: const HomeScreen(),
    );
  }
}
