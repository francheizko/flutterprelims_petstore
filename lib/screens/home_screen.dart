import 'package:flutter/material.dart';
import 'package:flutter_petstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_petstore/constants/cat_model.dart';
import 'package:flutter_petstore/constants/cat_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
            width: 450,
          ),
          Text(
            'Store',
            style: GoogleFonts.poppins(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            height: 49,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFF2F3F2),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 35,
                ),
                Expanded(
                  child: TextField(
                    style: GoogleFonts.poppins(fontSize: 12),
                    onChanged: (value) {
                      Provider.of<CatProvider>(context, listen: false)
                          .filterCats(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search Product or Brand',
                      hintStyle: GoogleFonts.poppins(fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Consumer<CatProvider>(
                builder: (context, catProvider, child) {
                  final filteredCats = catProvider.filteredCats;
                  if (filteredCats.isEmpty && catProvider.isSearching) {
                    return const Center(
                      child: Text('No results found.'),
                    );
                  }

                  // Display the entire list if search text is empty
                  if (catProvider.searchText.isEmpty) {
                    return Column(
                      children: List.generate(
                        catProvider.cats.length,
                        (index) {
                          if (index.isOdd) {
                            return const SizedBox(height: 24);
                          }
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Row(
                              children: [
                                buildItemContainer(catProvider.cats[index]),
                                const SizedBox(width: 24),
                                if (index + 1 < catProvider.cats.length)
                                  buildItemContainer(
                                      catProvider.cats[index + 1]),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }
                  return Column(
                    children: List.generate(
                      filteredCats.length,
                      (index) {
                        if (index.isOdd) {
                          return const SizedBox(height: 24);
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Row(
                            children: [
                              buildItemContainer(filteredCats[index]),
                              const SizedBox(width: 24),
                              if (index + 1 < filteredCats.length)
                                buildItemContainer(filteredCats[index + 1]),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItemContainer(Cat cat) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 183,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.17),
              offset: const Offset(0.0, 3.0),
              blurRadius: 24.0,
              spreadRadius: 0.0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 111,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(cat.imagePath),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              cat.name,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  '\$${cat.price}',
                  style: GoogleFonts.poppins(fontSize: 14, color: lyellow),
                ),
                const SizedBox(width: 108),
                Transform.scale(
                  scale: 1.5,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/shopping-cart.png'),
                      ),
                    ),
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
