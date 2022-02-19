import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVerticalList extends StatelessWidget {
  final String courseImage;
  final String courseTile;
  final String courseDuration;
  final double courseRating;

  const MyVerticalList({
    Key? key,
    required this.courseImage,
    required this.courseTile,
    required this.courseDuration,
    required this.courseRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 92,
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * 0.13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF3E3A6D),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 13,
                  spreadRadius: 0,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 26,
              bottom: 19,
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 31,
                      child: Container(
                        width: 117,
                        height: 84,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xFFFFB4B4)),
                      ),
                    ),
                    Container(
                      width: 115,
                      height: 115,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            courseImage,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 52,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseTile,
                        style: GoogleFonts.roboto(
                          color: const Color(0XFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        courseDuration,
                        style: GoogleFonts.roboto(
                          color: const Color(0XFF8C8C8C),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      RatingBar.builder(
                        initialRating: courseRating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: const EdgeInsets.symmetric(
                          horizontal: 1,
                        ),
                        itemBuilder: (context, index) {
                          return const Icon(
                            Icons.star,
                            color: Color(0XFFF4C465),
                          );
                        },
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 34,
            right: 0,
            child: Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEB53A2),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
