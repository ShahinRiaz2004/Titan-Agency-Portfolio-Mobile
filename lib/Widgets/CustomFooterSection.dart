import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/MainPage.dart';
import '../Pages/ServicesPage.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 691,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromRGBO(36, 36, 36, 1), width: 1),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: Container(
              height: 400,
              child: Column(
                children: [
                  Image.asset('assets/images/Top_Logo.png', scale: 3),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Container(
                      height: 0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(36, 36, 36, 1),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Home',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Servicespage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Services',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Work',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Process',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'About',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Carrers',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Contact',
                                style: GoogleFonts.barlow(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Image.asset('assets/images/Sub Container.png'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Image.asset('assets/images/Container.png'),
          ),
        ],
      ),
    );
  }
}
