import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_information_app/Widgets/CustomAppbar.dart';
import '../Widgets/CustomDrawer.dart';
import 'WorkPage.dart';

class Aboutpage extends StatefulWidget {
  const Aboutpage({super.key});

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
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
      body: Center(
        child: Text(
          'About Page',
          style: GoogleFonts.barlow(
            fontSize: 34,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
