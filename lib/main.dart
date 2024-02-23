import 'package:flutter/material.dart';
import 'package:flutter_petstore/constants/cat_details_model.dart';
import 'package:flutter_petstore/screens/bottom_navbar.dart';
import 'package:flutter_petstore/screens/cat_cart_screen.dart';
import 'package:flutter_petstore/screens/cat_details.dart';
import 'package:flutter_petstore/screens/home_screen.dart';
import 'package:flutter_petstore/screens/nearby_stores.dart';
import 'package:flutter_petstore/screens/onboarding_screen.dart';
import 'package:flutter_petstore/constants/cat_provider.dart';
import 'package:flutter_petstore/screens/profile_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CatProvider(),
      child: const PrelimsApp(),
    ),
  );
}

class PrelimsApp extends StatefulWidget {
  const PrelimsApp({Key? key}) : super(key: key);

  @override
  State<PrelimsApp> createState() => _PrelimsAppState();
}

class _PrelimsAppState extends State<PrelimsApp> {
  // Introducing a new state to track if onboarding has been completed.
  bool isOnboardingComplete = false;

  int _selectedIndex = 0; // Default to the first tab (e.g., HomeScreen)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = isOnboardingComplete
        ? Scaffold(
            body: _buildBody(_selectedIndex, context),
            bottomNavigationBar: BottomNavBar(
              selectedindex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          )
        : OnboardingScreen(onComplete: () {
            setState(() {
              isOnboardingComplete = true;
            });
          });

    return MaterialApp(
      home: currentScreen,
    );
  }

  Widget _buildBody(int selectedIndex, BuildContext context) {
    // final catProvider = Provider.of<CatProvider>(context);

    switch (selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const NearbyStoresScreen();
      case 2:
        return const CatCartScreen();
      case 3:
        return const ProfileScreen();

      default:
        return const HomeScreen();
    }
  }
}
