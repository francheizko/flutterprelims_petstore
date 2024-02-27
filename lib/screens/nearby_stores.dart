import 'package:flutter/material.dart';

import 'package:flutter_petstore/constants/constants.dart';

class NearbyStoresScreen extends StatelessWidget {
  const NearbyStoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lwhite,
      body: Container(
        height: 850,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Store_Location.png'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
