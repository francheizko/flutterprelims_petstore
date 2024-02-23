import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> imageList = [
  'assets/Slider_image1.png',
  'assets/Slider_image2.jpg',
  'assets/Slider_image3.jpg'
];

final List<String> titles = [
  'Your One-Stop Pet Shop Experience!',
  'Discover a World of Pet Care',
  'Tailored Services for Your Furry Friends',
];

final List<String> descriptions = [
  'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
  'Explore a variety of pet care services to ensure your pets receive the best attention.',
  'From walks to grooming, discover personalized care options for your furry companions.',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 500,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.asset(item,
                      fit: BoxFit.cover, height: 500, width: 500),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    titles[_current],
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    descriptions[_current],
                    style:
                        GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 400, // Adjust the position as needed
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList
                .asMap()
                .entries
                .map(
                  (entry) => GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Transform.scale(
                        scale: 0.9,
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/scroll-circle.svg'
                              : 'assets/scroll-circle-2.svg',
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
