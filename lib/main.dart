import "package:flutter/material.dart";
import "package:flutter_petstore/screens/onboarding_screen.dart";
import 'package:flutter_petstore/constants/cat_provider.dart';
import "package:provider/provider.dart";

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CatProvider(),
      child: const PrelimsApp(),
    ),
  );
}

class PrelimsApp extends StatefulWidget {
  const PrelimsApp({super.key});

  @override
  State<PrelimsApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PrelimsApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        body: OnboardingScreen(),
      ),
    );
  }
}
