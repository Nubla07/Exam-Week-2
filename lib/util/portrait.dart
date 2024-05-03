import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/suggestions_page.dart';

class PortraitPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String heading;
  final String details;
  final int index;

  const PortraitPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.heading,
    required this.details,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double buttonWidth = screenWidth * 0.5; // Set button width to half of the screen width

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 325,
            margin: const EdgeInsets.only(top: 15, left: 19, right: 19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                details,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(buttonWidth, 51), // Set button width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  backgroundColor: const Color(0xFF2CAB00),
                  elevation: 0,
                ),
                child: Center(
                  child: Text(
                    'See More',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Suggestions',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2CAB00),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SuggestionsPage(
                imagePath: imagePath,
                title: title,
                index: index,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
