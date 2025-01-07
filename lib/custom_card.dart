import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final List<CustomCardItem> children;

  const CustomCard({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 25.0,
      mainAxisSpacing: 20.0,
      children: children,
    );
  }
}

class CustomCardItem extends StatelessWidget {
  final String imagePath; // Path to the image asset
  final String title;
  final String description;
  final VoidCallback onTap;

  const CustomCardItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.0,
        height: 190.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 8.0,
              spreadRadius: -5,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Card(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFF3981D5),
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  imagePath,
                  width: 48.0,
                  height: 48.0,
                  color: const Color(0xFF3981D5),
                ),
                const SizedBox(height: 3.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: Divider(
                    color: Colors.black,
                    thickness: 0.85,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  title,
                  style: GoogleFonts.sourceSans3(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF3981D5),
                  ),
                ),
                const SizedBox(height: 4.0),
                Flexible(
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceSans3(
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
