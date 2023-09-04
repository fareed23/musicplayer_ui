import 'package:flutter/material.dart';
import 'package:musicplayerui/pages/home_page.dart';
import 'package:musicplayerui/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return const HomePage();
        })));
  }

  @override
  Widget build(BuildContext context) {
    return const OnboardingPage();
  }
}
