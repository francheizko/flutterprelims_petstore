import 'package:flutter/material.dart';
import 'package:flutter_petstore/screens/image_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  final VoidCallback onComplete;
  const OnboardingScreen({super.key, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: FullScreenSlider(),
          ),
          Positioned(
            bottom: 100,
            left: 22,
            right: 22,
            child: GestureDetector(
              onTap: onComplete,
              child: Container(
                width: 368,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color(0xFFE8BE13),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
