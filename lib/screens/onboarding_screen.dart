import 'package:flutter/material.dart';
import 'package:flutter_petstore/screens/home_screen.dart';
import 'package:flutter_petstore/screens/image_slider.dart';

import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // FullScreenSlider
          const Positioned.fill(
            child: FullScreenSlider(),
          ),

          // Back Button
          Positioned(
            top: 65,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 22,
            right: 22,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Container(
                width: 368,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color(0xFFE8BE13),
                ),
                child: Center(
                  child: Text('Get Started',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),

          // Container at the bottom of the screen
        ],
      ),
    );
  }
}
