import 'package:flutter/material.dart';
import 'package:flutter_online_course_app/presentation/widgets/my_horizontal_listview.dart';
import 'package:flutter_online_course_app/presentation/widgets/my_verticalList.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF29274F),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Online",
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  "Master Class",
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const MyHorizontalListView(
                    startColor: 0xFF9288E4,
                    endColor: 0xFF534EA7,
                    courseHeadLine: "Recomended",
                    courseTitle: "UI/UX DESIGNER\nBEGINNER",
                    courseImage: "lib/presentation/assets/Saly-10.png",
                    courseImage2: "lib/presentation/assets/image.png",
                  );
                },
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Free online class",
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "From over 80 Lectures",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A),
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const MyVerticalList(
                  courseImage: "lib/presentation/assets/Saly-24.png",
                  courseTile: "Flutter Developer",
                  courseDuration: "8 Hours",
                  courseRating: 3.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
