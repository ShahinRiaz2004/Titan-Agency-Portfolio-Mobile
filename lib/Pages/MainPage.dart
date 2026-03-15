import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_information_app/Pages/AboutPage.dart';
import 'package:titan_information_app/Pages/WorkPage.dart';
import '../Widgets/CustomAppbar.dart';
import '../Widgets/CustomDrawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Color(0xff1A1A1A),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(108),
        child: CustomAppBar(),
      ),

      //Page
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 566,
                    decoration: BoxDecoration(
                      color: Color(0xff1A1A1A),
                      border: Border.all(color: Color(0xff262626), width: 1),
                      image: DecorationImage(
                        image: AssetImage('assets/images/square_tiles.png'),
                        repeat: ImageRepeat.repeat,
                        scale: 1,
                        alignment: AlignmentGeometry.topLeft,
                      ),
                    ),

                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.fromLTRB(16, 160, 16, 0),
                          child: IgnorePointer(
                            child: Image.asset(
                              'assets/images/Abstract Design.png',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 40, 16, 240),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'A Digital Product Studio that will Work',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.barlow(
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                      child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 12,
                                            sigmaY: 12,
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 84,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                36,
                                                36,
                                                36,
                                                0.2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xff262626),
                                                width: 1,
                                              ),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    EdgeInsetsGeometry.fromLTRB(
                                                      20,
                                                      18,
                                                      20,
                                                      18,
                                                    ),
                                                child: Text(
                                                  'For startups, enterprise leaders, media & publishers, and social good.',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.barlow(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                      152,
                                                      152,
                                                      154,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 264,
                                height: 58,
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Workpage(),
                                          ),
                                        );
                                      },
                                      child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 12,
                                            sigmaY: 12,
                                          ),
                                          child: Container(
                                            width: 108,
                                            height: 58,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Color.fromRGBO(
                                                36,
                                                36,
                                                36,
                                                0.2,
                                              ),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                  51,
                                                  51,
                                                  51,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Our Works',
                                                style: GoogleFonts.barlow(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                    255,
                                                    255,
                                                    255,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Aboutpage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 108,
                                        height: 58,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color.fromRGBO(158, 255, 0, 1),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Contact Us',
                                            style: GoogleFonts.barlow(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                38,
                                                38,
                                                38,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ), //Hero Section
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 320,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(36, 36, 36, 0.2),
                        border: Border.all(
                          color: Color.fromRGBO(38, 38, 38, 1),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/trusted_campanies/zapier.png',
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(38, 38, 38, 1),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/trusted_campanies/spotify.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(38, 38, 38, 1),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/trusted_campanies/zoom.png',
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(38, 38, 38, 1),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/trusted_campanies/slack.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(38, 38, 38, 1),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/trusted_campanies/amazon.png',
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(38, 38, 38, 1),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/trusted_campanies/adobe.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ), //Container Section
                ],
              ),
              Positioned(
                top: 566 - 18, // Hero height minus half the badge height
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(26, 26, 26, 1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color.fromRGBO(38, 38, 38, 1)),
                  ),
                  child: Text(
                    'Trusted By 250+ Companies',
                    style: GoogleFonts.barlow(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
              height: 1270,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(38, 38, 38, 1)),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 188,
                        decoration: BoxDecoration(
                          color: Color(0xff1A1A1A),
                          backgroundBlendMode: BlendMode.overlay,
                          image: DecorationImage(
                            opacity: 0.1,
                            image: AssetImage(
                              'assets/images/Abstract Design 2.png',
                            ),
                            colorFilter: ColorFilter.mode(
                              Color.fromRGBO(172, 255, 36, 0.1),
                              BlendMode.color,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/square_tiles.png',
                          repeat: ImageRepeat.repeat,
                          scale: 1,
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              'Our Services',
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Center(
                              child: Text(
                                'Transform your brand with our innovative digital solutions that captivate and engage your audience.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), //Our Services
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 360,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 58,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/Painting_icon.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Design',
                                          style: GoogleFonts.barlow(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white,
                                            letterSpacing: -0.6,
                                          ),
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 24, 30, 0),
                              child: Text(
                                'At Squareup, our design team is passionate about creating stunning, user-centric designs that captivate your audience and elevate your brand. We believe that great design is not just about aesthetics; it\'s about creating seamless and intuitive user experiences.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  30,
                                  24,
                                  30,
                                  30,
                                ),
                                child: Container(
                                  height: 52,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(38, 38, 38, 1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Learn More',
                                      style: GoogleFonts.barlow(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            width: 1,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 360,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 58,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/Enginnering.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Engineering',
                                          style: GoogleFonts.barlow(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white,
                                            letterSpacing: -0.6,
                                          ),
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 24, 30, 0),
                              child: Text(
                                'Our engineering team combines technical expertise with a passion for innovation to build robust and scalable digital solutions. We leverage the latest technologies and best practices to deliver high-performance applications tailored to your specific needs.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  30,
                                  24,
                                  30,
                                  30,
                                ),
                                child: Container(
                                  height: 52,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(38, 38, 38, 1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Learn More',
                                      style: GoogleFonts.barlow(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            width: 1,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 360,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 58,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/managment.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Project Management',
                                          style: GoogleFonts.barlow(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white,
                                            letterSpacing: -0.6,
                                          ),
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 24, 30, 0),
                              child: Text(
                                'At Squareup, our design team is passionate about creating stunning, user-centric designs that captivate your audience and elevate your brand. We believe that great design is not just about aesthetics; it\'s about creating seamless and intuitive user experiences.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  30,
                                  24,
                                  30,
                                  30,
                                ),
                                child: Container(
                                  height: 52,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(38, 38, 38, 1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Learn More',
                                      style: GoogleFonts.barlow(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            width: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
