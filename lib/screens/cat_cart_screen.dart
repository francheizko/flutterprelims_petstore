import 'package:flutter/material.dart';
import 'package:flutter_petstore/constants/cat_model.dart';
import 'package:flutter_petstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_petstore/constants/cat_provider.dart';
import 'package:provider/provider.dart';

class CatCartScreen extends StatefulWidget {
  const CatCartScreen({Key? key});

  @override
  State<CatCartScreen> createState() => _CatCartScreenState();
}

class _CatCartScreenState extends State<CatCartScreen> {
  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatProvider>(context);
    final cartItems = catProvider.cartItems;

    return Scaffold(
      backgroundColor: lwhite,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Transform.scale(
                    scale: 1.1,
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/back_button.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  'My Cart',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: lyellow,
                  ),
                ),
                const SizedBox(
                  width: 85,
                ),
                Transform.scale(
                  scale: 1,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/notification-2.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return buildCartItemContainer(cartItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCartItemContainer(Cat cartItem) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: lyellow, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(cartItem.imagePath),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.name,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${cartItem.price}',
                    style: GoogleFonts.poppins(fontSize: 16, color: lyellow),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                // Add your logic to remove the item from the cart
                Provider.of<CatProvider>(context, listen: false)
                    .removeFromCart(cartItem);
              },
              icon: const Icon(
                Icons.remove_circle,
                color: lyellow,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
