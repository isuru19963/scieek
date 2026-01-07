import 'package:flutter/material.dart';
import 'screens/main/profile/profile.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scieek - Profile Page',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ProfilePage(), // Direct to Profile Page for testing
    );
  }
}
