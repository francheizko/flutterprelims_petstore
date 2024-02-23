import 'package:flutter/material.dart';

import 'package:flutter_petstore/constants/cat_details_model.dart';

import 'package:flutter_petstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CatDetailsScreen extends StatefulWidget {
  final CatDetails catDetails;

  const CatDetailsScreen({super.key, required this.catDetails});

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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.catDetails.imagePath),
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
              height: 420,
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
                          'About ${widget.catDetails.name}',
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
                                widget.catDetails.weight,
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
                                widget.catDetails.height,
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
                          padding: const EdgeInsets.all(10),
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
                                widget.catDetails.color,
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
                      widget.catDetails.description,
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
                              '${widget.catDetails.name} Behavior',
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
                                  'Soft-hearted',
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
                                  'Smart',
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
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.catDetails.name,
                      style: GoogleFonts.poppins(
                          fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.catDetails.country,
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: llightgray),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 2.5,
                          height: 2.5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.catDetails.age,
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: llightgray),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  left: 280,
                  top: 5,
                  child: Container(
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
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 30,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform.scale(
              scale: 1.5,
              child: Container(
                height: 28,
                width: 28,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons8-back-100.png'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
