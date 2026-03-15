import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_information_app/Widgets/CustomAppbar.dart';
import '../Widgets/CustomDrawer.dart';

class ProcessPage extends StatelessWidget {
  const ProcessPage({super.key});

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
          'Process Page',
          style: GoogleFonts.barlow(fontSize: 34, color: Colors.white),
        ),
      ),
    );
  }
}
