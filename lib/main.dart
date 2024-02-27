import 'package:flutter/material.dart';
import 'package:flutter_petstore/screens/bottom_navbar.dart';
import 'package:flutter_petstore/screens/cat_cart_screen.dart';
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
  const PrelimsApp({super.key});

  @override
  State<PrelimsApp> createState() => PrelimsAppState();
}

class PrelimsAppState extends State<PrelimsApp> {
  bool isOnboardingComplete = false;

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = isOnboardingComplete
        ? Scaffold(
            body: buildBody(selectedIndex, context),
            bottomNavigationBar: BottomNavBar(
              selectedindex: selectedIndex,
              onItemTapped: onItemTapped,
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

  Widget buildBody(int selectedIndex, BuildContext context) {
    switch (selectedIndex) {
      case 0:
        return const NearbyStoresScreen();
      case 1:
        return const HomeScreen();
      case 2:
        return const CatCartScreen();
      case 3:
        return const ProfileScreen();

      default:
        return const HomeScreen();
    }
  }
}
