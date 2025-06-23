import 'package:flutter/material.dart';
import 'package:saloon_project123/features/loginwithregister/view/loginwithregister_screen.dart';
import 'package:saloon_project123/features/verification/view/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginwithregister(),
    );
  }
}
