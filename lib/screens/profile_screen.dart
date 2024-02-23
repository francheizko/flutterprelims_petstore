import 'package:flutter/material.dart';
import 'package:flutter_petstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lwhite,
      body: Center(
        child: Text(
          'Coming Soon!',
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.bold, color: lyellow),
        ),
      ),
    );
  }
}
