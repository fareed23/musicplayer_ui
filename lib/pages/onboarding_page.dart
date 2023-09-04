import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:musicplayerui/utils/neu_box.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(height: 50),
              // a picture or flaticon with neubox
              NeuBox(
                child: Image.asset('lib/images/listening.png'),
              ),

              const SizedBox(height: 50),

              // text -> listen music globally
              Center(
                child: Text(
                  'Listen Music Globally',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // dot indicator

              DotsIndicator(
                dotsCount: 3,
                decorator: DotsDecorator(
                  color: Colors.grey.shade500,
                  activeColor: Colors.pink[400],
                ),
              ),

              const SizedBox(height: 50),

              // continue button
              Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.pink[500],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 15,
                      offset: const Offset(5, 5),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 15,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 32,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
