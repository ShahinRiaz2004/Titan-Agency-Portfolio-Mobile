import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_information_app/Pages/AboutPage.dart';
import 'package:titan_information_app/Pages/ServicesPage.dart';
import 'package:titan_information_app/Pages/WorkPage.dart';
import '../Widgets/CustomAppbar.dart';
import '../Widgets/CustomDrawer.dart';
import '../Widgets/CustomFooterSection.dart';
import '../Widgets/QandACard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<double> _turns = [0.0, 0.0, 0.0, 0.0];
  List<Color> QandA_Ext_But = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<double> Padder = [18, 18, 18, 18];
  List<bool> _isExpanded = [false, false, false, false];
  final EmailController = TextEditingController();
  final NameController = TextEditingController();
  final MessageController = TextEditingController();
  String nameChecker = '';
  String emailNotValid = '';
  String MessageChecker = '';
  String? namevaluelooker = '';
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    EmailController.addListener(() => setState(() {}));
    NameController.addListener(() => setState(() {}));
    MessageController.addListener(() => setState(() {}));
  }

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
                                'At Titan, our design team is passionate about creating stunning, user-centric designs that captivate your audience and elevate your brand. We believe that great design is not just about aesthetics; it\'s about creating seamless and intuitive user experiences.',
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
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
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
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
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
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
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
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
              height: 1230,
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
                              'assets/images/Abstract Design 3.png',
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
                              'Why Choose Titan?',
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(6, 6, 6, 10),
                            child: Center(
                              child: Text(
                                'Experience excellence in digital craftsmanship with our team of skilled professionals dedicated to delivering exceptional results.',
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
                        height: 260,
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
                                        'assets/images/Expertise.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Expertise',
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
                                'Our team consists of highly skilled professionals who have a deep understanding of the digital landscape. We stay updated with the latest industry trends and best practices to deliver cutting-edge solutions.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
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
                        height: 260,
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
                                        'assets/images/Client-Centric Approach.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Client-Centric Approach',
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
                        height: 260,
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
                                        'assets/images/Results-Driven Solutions.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Results-Driven Solutions',
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
                                'Our primary focus is on delivering results. We combine creativity and technical expertise to create digital products that drive business growth, enhance user experiences, and provide a competitive advantage.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
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
                        height: 260,
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
                                        'assets/images/Collaborative Partnership.png',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Collaborative Partnership',
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
                                'We value long-term relationships with our clients. We see ourselves as your digital partner, providing ongoing support, maintenance, and updates to ensure your digital products continue to thrive.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
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
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
              height: 2439,
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
                        height: 270,
                        decoration: BoxDecoration(
                          color: Color(0xff1A1A1A),
                          backgroundBlendMode: BlendMode.overlay,
                          image: DecorationImage(
                            opacity: 0.1,
                            image: AssetImage(
                              'assets/images/Abstract Design 4.png',
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 20, 24, 10),
                            child: Center(
                              child: Text(
                                'What our Clients say About us',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 12, 10),
                            child: Center(
                              child: Text(
                                'At SquareUp, we take pride in delivering exceptional digital products and services that drive success for our clients. Here\'s what some of our satisfied clients have to say about their experience working with us',
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
                        height: 335,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      'Titan has been Instrumental in Transforming our Online Presence.',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.barlow(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(216, 255, 153, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: Text(
                                'Their team\'s expertise in web development and design resulted in a visually stunning and user-friendly e-commerce platform. Our online sales have skyrocketed, and we couldn\'t be happier.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                28,
                                24,
                                20,
                              ),
                              child: Image.asset(
                                'assets/images/John Smith.png',
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
                        height: 350,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 40,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Working with SquareUp was a breeze.',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.barlow(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                            color: Color.fromRGBO(
                                              216,
                                              255,
                                              153,
                                              1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                              child: Text(
                                'They understood our vision for a mobile app that streamlined our food delivery service. The app they delivered exceeded our expectations, and our customers love the seamless ordering experience. SquareUp is a trusted partner we highly recommend.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                24,
                                24,
                                20,
                              ),
                              child: Image.asset(
                                'assets/images/Sarah Johnson.png',
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
                        height: 384,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 81,
                                  child: Center(
                                    child: Text(
                                      'SquareUp developed a comprehensive booking and reservation system for our event management company',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.barlow(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(216, 255, 153, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: Text(
                                'Their attention to detail and commitment to delivering a user-friendly platform was evident throughout the project. The system has streamlined our operations and enhanced our clients\' event experiences.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                24,
                                24,
                                20,
                              ),
                              child: Image.asset(
                                'assets/images/Mark Thompson.png',
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
                        height: 356,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 54,
                                  child: Center(
                                    child: Text(
                                      'ProTech Solutions turned to SquareUp to automate our workflow',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.barlow(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(216, 255, 153, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: Text(
                                'They delivered an exceptional custom software solution. The system has significantly increased our productivity and reduced manual errors. SquareUp\'s expertise and professionalism have made them a trusted technology partner.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                24,
                                24,
                                20,
                              ),
                              child: Image.asset(
                                'assets/images/Laura Adams.png',
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
                        height: 362,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 81,
                                  child: Center(
                                    child: Text(
                                      'SquareUp designed and developed a captivating web portal for showcasing our real estate listings.',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.barlow(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(216, 255, 153, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: Text(
                                'The platform is visually appealing and easy to navigate, allowing potential buyers to find their dream homes effortlessly. SquareUp\'s expertise in the real estate industry is unmatched.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                24,
                                24,
                                20,
                              ),
                              child: Image.asset(
                                'assets/images/Michael Anderson.png',
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
                        height: 380,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 81,
                                  child: Center(
                                    child: Text(
                                      'FitLife Tracker wanted a mobile app that tracked fitness activities and provided personalized workout plans.',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.barlow(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromRGBO(216, 255, 153, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Text(
                                'SquareUp\'s team developed an intuitive and feature-rich app that has helped our users stay motivated and achieve their fitness goals. We highly recommend SquareUp for any health and fitness app development needs.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                24,
                                24,
                                20,
                              ),
                              child: Image.asset(
                                'assets/images/Emily Turner.png',
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
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
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
                        height: 222,
                        decoration: BoxDecoration(
                          color: Color(0xff1A1A1A),
                          backgroundBlendMode: BlendMode.overlay,
                          image: DecorationImage(
                            opacity: 0.1,
                            image: AssetImage(
                              'assets/images/Abstract Design 4.png',
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(24, 20, 24, 10),
                            child: Center(
                              child: Text(
                                'What our Clients say About us',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.barlow(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 12, 10),
                            child: Center(
                              child: Text(
                                'At SquareUp, we take pride in delivering exceptional digital products and services that drive success for our clients. Here\'s what some of our satisfied clients have to say about their experience working with us',
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
                  ), //What our Clients Say About us.
                  Column(
                    children: [
                      Container(
                        child: QandACard(
                          title: 'What services does SquareUp provide?',
                          text:
                              'SquareUp offers a range of services including design, engineering, and project management. We specialize in user experience design, web development, mobile app development, custom software development, branding and identity, and more.',

                          // Settings--------------------
                          Padder: _isExpanded[0]
                              ? Padder[0] = 36
                              : Padder[0] = 24,
                          QandA_Ext_But: _isExpanded[0]
                              ? QandA_Ext_But[0] = Color.fromRGBO(
                                  216,
                                  255,
                                  153,
                                  1,
                                )
                              : QandA_Ext_But[0] = Colors.white,
                          turns: _isExpanded[0]
                              ? _turns[0] = 1.0 / 8.0
                              : _turns[0] = 0,
                          isExpanded: _isExpanded[0],
                          onPressed: () {
                            setState(() {
                              _isExpanded[0] = !_isExpanded[0];
                            });
                          },
                          Number: "01",
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
                        child: QandACard(
                          title: 'How can SquareUp help my business?',
                          text:
                              'SquareUp offers a range of services including design, engineering, and project management. We specialize in user experience design, web development, mobile app development, custom software development, branding and identity, and more.',

                          // Settings--------------------
                          Padder: _isExpanded[1]
                              ? Padder[1] = 36
                              : Padder[1] = 24,
                          QandA_Ext_But: _isExpanded[1]
                              ? QandA_Ext_But[1] = Color.fromRGBO(
                                  216,
                                  255,
                                  153,
                                  1,
                                )
                              : QandA_Ext_But[1] = Colors.white,
                          turns: _isExpanded[1]
                              ? _turns[1] = 1.0 / 8.0
                              : _turns[1] = 0,
                          isExpanded: _isExpanded[1],
                          onPressed: () {
                            setState(() {
                              _isExpanded[1] = !_isExpanded[1];
                            });
                          },
                          Number: "02",
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
                        child: QandACard(
                          title: 'What industries does SquareUp work with?',
                          text:
                              'SquareUp offers a range of services including design, engineering, and project management. We specialize in user experience design, web development, mobile app development, custom software development, branding and identity, and more.',

                          // Settings--------------------
                          Padder: _isExpanded[2]
                              ? Padder[2] = 36
                              : Padder[2] = 24,
                          QandA_Ext_But: _isExpanded[2]
                              ? QandA_Ext_But[2] = Color.fromRGBO(
                                  216,
                                  255,
                                  153,
                                  1,
                                )
                              : QandA_Ext_But[2] = Colors.white,
                          turns: _isExpanded[2]
                              ? _turns[2] = 1.0 / 8.0
                              : _turns[2] = 0,
                          isExpanded: _isExpanded[2],
                          onPressed: () {
                            setState(() {
                              _isExpanded[2] = !_isExpanded[2];
                            });
                          },
                          Number: "03",
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
                        child: QandACard(
                          Number: "04",
                          title:
                              'How long does it take to complete a project with SquareUp?',
                          text:
                              'SquareUp offers a range of services including design, engineering, and project management. We specialize in user experience design, web development, mobile app development, custom software development, branding and identity, and more.',

                          // Settings--------------------
                          Padder: _isExpanded[3]
                              ? Padder[3] = 36
                              : Padder[3] = 24,
                          QandA_Ext_But: _isExpanded[3]
                              ? QandA_Ext_But[3] = Color.fromRGBO(
                                  216,
                                  255,
                                  153,
                                  1,
                                )
                              : QandA_Ext_But[3] = Colors.white,
                          turns: _isExpanded[3]
                              ? _turns[3] = 1.0 / 8.0
                              : _turns[3] = 0,
                          isExpanded: _isExpanded[3],
                          onPressed: () {
                            setState(() {
                              _isExpanded[3] = !_isExpanded[3];
                            });
                          },
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
          InformationSubmitWidget(
            NameController: NameController,
            EmailController: EmailController,
            nameChecker: nameChecker,
            OnChanged: (value) => setState(() {
              this.nameChecker = value;
            }),
            OnFieldSubmitted: (value) {
              setState(() {
                emailNotValid = value;
              });
            },
            MessageController: MessageController,
          ),
          FooterSection(),
        ],
      ),
    );
  }
}

class InformationSubmitWidget extends StatefulWidget {
  InformationSubmitWidget({
    super.key,
    required this.NameController,
    required this.EmailController,
    required this.nameChecker,
    required this.OnChanged,
    required this.OnFieldSubmitted,
    required this.MessageController,
  });

  final TextEditingController NameController;
  final TextEditingController EmailController;
  final TextEditingController MessageController;
  final String nameChecker;
  final ValueChanged<String> OnChanged;
  final ValueChanged<String> OnFieldSubmitted;

  @override
  State<InformationSubmitWidget> createState() =>
      _InformationSubmitWidgetState();
}

class _InformationSubmitWidgetState extends State<InformationSubmitWidget> {
  final formKey = GlobalKey<FormState>();
  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final messageFocus = FocusNode();

  int shakeNameTick = 0;
  int shakeEmailTick = 0;

  @override
  void dispose() {
    nameFocus.dispose();
    emailFocus.dispose();
    messageFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        width: double.infinity,
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
                  height: 390,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1A1A),
                    backgroundBlendMode: BlendMode.overlay,
                    image: DecorationImage(
                      opacity: 0.1,
                      image: AssetImage('assets/images/Abstract Design 5.png'),
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 28),
                      child: Image.asset('assets/images/Logo-Green-Hollow.png'),
                    ),

                    Center(
                      child: Text(
                        'Thank you for your Interest in Titan.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 2, 16, 0),
                      child: Center(
                        child: Text(
                          'We would love to hear from you and discuss how we can help bring your digital ideas to life. Here are the different ways you can get in touch with us.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 128,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(158, 255, 0, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Start Project',
                              style: GoogleFonts.barlow(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(38, 38, 38, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ), //Our Services
            Container(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 116,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(36, 36, 36, 0.5),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color.fromRGBO(38, 38, 38, 1),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 8, 24, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Full Name',
                                    style: GoogleFonts.barlow(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 0, 24, 12),
                              child: ShakeWidget(
                                trigger: shakeNameTick,
                                child: TextFormField(
                                  onChanged: (value) {
                                    widget.OnChanged(value);
                                  },
                                  onFieldSubmitted: widget.OnFieldSubmitted,
                                  focusNode: nameFocus,
                                  controller: widget.NameController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  cursorColor: Color.fromRGBO(158, 255, 0, 1),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Name is required';
                                    } else if (value.trim().length < 3) {
                                      return 'Name must be at least 3 characters long.';
                                    }
                                    return null;
                                  },
                                  style: GoogleFonts.barlow(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(158, 255, 0, 0.5),
                                      ),
                                    ),

                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(158, 255, 0, 1),
                                        width: 2,
                                      ),
                                    ),

                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    suffixIcon:
                                        widget.NameController.text.isEmpty
                                        ? Container(width: 0)
                                        : IconButton(
                                            onPressed: () =>
                                                widget.NameController.clear(),
                                            icon: Icon(Icons.close),
                                          ),
                                    hintText: 'Type Here...',
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 116,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(36, 36, 36, 0.5),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color.fromRGBO(38, 38, 38, 1),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 8, 24, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Email',
                                    style: GoogleFonts.barlow(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 0, 24, 12),
                              child: ShakeWidget(
                                trigger: shakeEmailTick,
                                child: TextFormField(
                                  controller: widget.EmailController,
                                  focusNode: emailFocus,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.done,
                                  cursorColor: Color.fromRGBO(158, 255, 0, 1),

                                  validator: (value) {
                                    final emailRegex = RegExp(
                                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                    );
                                    if (value == null || value.isEmpty) {
                                      return 'Email is required';
                                    } else if (!emailRegex.hasMatch(value)) {
                                      return 'Email is not valid';
                                    }
                                    return null;
                                  },
                                  style: GoogleFonts.barlow(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(158, 255, 0, 0.5),
                                      ),
                                    ),

                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(158, 255, 0, 1),
                                        width: 2,
                                      ),
                                    ),

                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    suffixIcon:
                                        widget.EmailController.text.isEmpty
                                        ? Container(width: 0)
                                        : IconButton(
                                            onPressed: () =>
                                                widget.EmailController.clear(),
                                            icon: Icon(Icons.close),
                                          ),
                                    hintText: 'Type Here...',
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 330,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(36, 36, 36, 0.5),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color.fromRGBO(38, 38, 38, 1),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 8, 24, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Your Message',
                                    style: GoogleFonts.barlow(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(24, 0, 24, 22),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: 0,
                                  maxHeight: 150,
                                ),
                                child: TextFormField(
                                  controller: widget.MessageController,
                                  focusNode: messageFocus,
                                  keyboardType: TextInputType.multiline,
                                  minLines: 1,
                                  maxLines: null,
                                  textInputAction: TextInputAction.done,
                                  cursorColor: Color.fromRGBO(158, 255, 0, 1),

                                  style: GoogleFonts.barlow(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Your Message....',
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 8,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(158, 255, 0, 0.5),
                                      ),
                                    ),

                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(158, 255, 0, 1),
                                        width: 2,
                                      ),
                                    ),

                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),

                                    suffixIcon:
                                        widget.MessageController.text.isEmpty
                                        ? null
                                        : IconButton(
                                            onPressed: () => widget
                                                .MessageController.clear(),
                                            icon: Icon(Icons.close),
                                          ),
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 18, 0, 22),
                      child: TextButton(
                        onPressed: () {
                          final formState = formKey.currentState;

                          if (formState == null) return;

                          final isValid = formState.validate();

                          if (!isValid) {
                            final name = widget.NameController.text.trim();
                            final email = widget.EmailController.text.trim();

                            final emailRegex = RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                            );

                            setState(() {
                              if (name.isEmpty || name.length < 3) {
                                shakeNameTick++;
                              }

                              if (email.isEmpty ||
                                  !emailRegex.hasMatch(email)) {
                                shakeEmailTick++;
                              }
                            });

                            if (name.isEmpty || name.length < 3) {
                              nameFocus.requestFocus();
                            } else if (email.isEmpty ||
                                !emailRegex.hasMatch(email)) {
                              emailFocus.requestFocus();
                            }
                          }
                        },
                        child: Container(
                          width: 330,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(158, 255, 0, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: GoogleFonts.barlow(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(38, 38, 38, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShakeWidget extends StatefulWidget {
  final Widget child;
  final int trigger;

  const ShakeWidget({super.key, required this.child, required this.trigger});

  @override
  State<ShakeWidget> createState() => _ShakeWidgetState();
}

class _ShakeWidgetState extends State<ShakeWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
  }

  @override
  void didUpdateWidget(covariant ShakeWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.trigger != oldWidget.trigger) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        final dx =
            math.sin(_controller.value * math.pi * 8) *
            (1 - _controller.value) *
            10;

        return Transform.translate(offset: Offset(dx, 0), child: child);
      },
    );
  }
}
