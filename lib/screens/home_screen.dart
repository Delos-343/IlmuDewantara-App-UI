import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilmudewantara_app_ui/widgets/my_vertical_list.dart';
import 'package:ilmudewantara_app_ui/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IDe',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'IlmuDewantara',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MyHorizontalList(
                        startColor: 0xFF0C0C0C,
                        endColor: 0xFF000080,
                        courseHeadline: 'NEW',
                        courseTitle: 'Modules',
                        courseImage: 'images/IDE_mockups.png');
                  }),
            ),
            const SizedBox(height: 34),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exclusive Masterclass',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Speaker : Fachry DwiHandoko',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVerticalList(
                      courseImage: 'images/iPad_IDe-Watch.png',
                      courseTitle: 'JAMStack 101',
                      courseDuration: '7.6 Hours',
                      courseRating: 4.0);
                })
          ],
        ),
      ),
    );
  }
}
