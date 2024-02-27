import 'package:flutter/material.dart';
import 'package:flutter_petstore/constants/cat_model.dart';
import 'package:flutter_petstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_petstore/constants/cat_provider.dart';
import 'package:provider/provider.dart';

class CatCartScreen extends StatefulWidget {
  const CatCartScreen({
    super.key,
  });

  @override
  State<CatCartScreen> createState() => _CatCartScreenState();
}

class _CatCartScreenState extends State<CatCartScreen> {
  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatProvider>(context);
    final cartItems = catProvider.cartItems;
    final totalPrice = catProvider.calculateTotalPrice();

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
                const SizedBox(
                  width: 120,
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Total Price: \$${totalPrice.toStringAsFixed(2)}',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
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
          color: lwhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.18),
              offset: const Offset(0.0, 4.0),
              blurRadius: 24.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(cartItem.imagePath),
                ),
              ),
            ),
            const SizedBox(width: 15),
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
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Provider.of<CatProvider>(context, listen: false)
                        .removeQuantityFromCart(cartItem);
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: lyellow,
                    size: 24,
                  ),
                ),
                Text(
                  '${cartItem.quantity}',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                IconButton(
                  onPressed: () {
                    Provider.of<CatProvider>(context, listen: false)
                        .addQuantityToCart(cartItem);
                  },
                  icon: const Icon(
                    Icons.add,
                    color: lyellow,
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
