import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_information_app/Pages/AboutPage.dart';
import 'package:titan_information_app/Pages/CareersPage.dart';
import 'package:titan_information_app/Pages/MainPage.dart';
import 'package:titan_information_app/Pages/Process.dart';
import 'package:titan_information_app/Pages/ServicesPage.dart';
import 'package:titan_information_app/Pages/WorkPage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.0),
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
            child: Container(
              color: Colors.black.withAlpha(20),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(),
                      child: ClipRect(
                        child: Stack(
                          children: [
                            OverflowBox(
                              maxWidth: double.infinity,
                              maxHeight: double.infinity,
                              child: Transform.scale(
                                scale: 2.2,
                                child: Image.asset(
                                  'assets/images/Logo_filled_unfilled.png',
                                  colorBlendMode: BlendMode.clear,
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 116, 0, 0),
                                child: Text(
                                  'Menu',
                                  style: GoogleFonts.barlow(
                                    letterSpacing: 6,
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        'Home',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      leading: Icon(Icons.construction),
                      title: Text(
                        'Services',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Servicespage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      leading: Icon(Icons.work_outline),
                      title: Text(
                        'Work',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Workpage()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      leading: Icon(Icons.sync),
                      title: Text(
                        'Process',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProcessPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      leading: Icon(Icons.help_outline),
                      title: Text(
                        'About',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Aboutpage()),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: ListTile(
                      leading: Icon(Icons.groups),
                      title: Text(
                        'Careers',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Careerspage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
