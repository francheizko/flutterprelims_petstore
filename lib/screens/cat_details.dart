import 'package:flutter/material.dart';

import 'package:flutter_petstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CatDetailsScreen extends StatefulWidget {
  const CatDetailsScreen({Key? key});

  @override
  State<CatDetailsScreen> createState() => _CatDetailsScreenState();
}

class _CatDetailsScreenState extends State<CatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 430,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Cat7.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              height: 380,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.1,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/pet.png'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'About Sphinx',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 120,
                          height: 85,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: lgreen.withOpacity(0.10)),
                          child: Column(
                            children: [
                              Text(
                                'Weight',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '3.5 kg',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: lyellow),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 120,
                          height: 85,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: lgreen.withOpacity(0.10)),
                          child: Column(
                            children: [
                              Text(
                                'Height',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '22 cm',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: lyellow),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 120,
                          height: 85,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: lgreen.withOpacity(0.10)),
                          child: Column(
                            children: [
                              Text(
                                'Color',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Dark pink',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: lyellow),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'The Sphinx cat, hairless and charming, boasts a velvety skin in various colors and patterns. Playful and affectionate, they capture hearts with their unique appearance and lively personalities.',
                      style: GoogleFonts.poppins(fontSize: 16, color: llgray),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.1,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/smileys.png'),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Sphinx Behavior',
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 130,
                              height: 38,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.transparent,
                                  border: Border.all(color: lyellow, width: 1)),
                              child: Center(
                                child: Text(
                                  'Affectionate',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 130,
                              height: 38,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.transparent,
                                  border: Border.all(color: lyellow, width: 1)),
                              child: Center(
                                child: Text(
                                  'Intelligent',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: 380,
          left: 23.5,
          child: Container(
            width: 380,
            height: 110,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: lwhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.17),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 24.0,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sphinx Cat',
                      style: GoogleFonts.poppins(
                          fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'Canada',
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: llightgray),
                        ),
                        const SizedBox(
                            width: 5), // Add some spacing between the texts
                        Container(
                          width: 2.5,
                          height: 2.5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black, // Adjust color as needed
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '8m',
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: llightgray),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 135,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/Expand.png',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(9),
                      color: lyellow),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
