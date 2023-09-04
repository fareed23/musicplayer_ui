import 'package:flutter/material.dart';
import 'package:musicplayerui/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
