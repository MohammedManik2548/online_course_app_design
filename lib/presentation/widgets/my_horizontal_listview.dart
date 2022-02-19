import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalListView extends StatelessWidget {
  final int startColor;
  final int endColor;
  final String courseHeadLine;
  final String courseTitle;
  final String courseImage;
  final String courseImage2;

  const MyHorizontalListView({
    Key? key,
    required this.startColor,
    required this.endColor,
    required this.courseHeadLine,
    required this.courseTitle,
    required this.courseImage,
    required this.courseImage2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 26,
      ),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: [
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 11,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 39,
                decoration: BoxDecoration(
                  color: const Color(0xFFAFA8EE),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Text(
                  courseHeadLine,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 14,
              child: Text(
                courseTitle,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 192,
              left: 100,
              child: Image.asset(
                courseImage2,
                width: 195,
                height: 179,
              ),
            ),
            Positioned(
              top: 70,
              left: 37,
              child: Image.asset(
                courseImage,
                width: 209,
                height: 279,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
