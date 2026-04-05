import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 108,
      backgroundColor: Color(0xff1A1A1A),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 36, 20),
              child: Row(
                children: [
                  Image.asset('assets/images/Logo_filled.png', scale: 4),
                  Text(
                    '  TITAN',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(202, 40, 20, 20),
              child: Builder(
                builder: (context) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () => Scaffold.of(context).openEndDrawer(),
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: Color(0xff262626),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.menu, color: Color(0xffd8ff99)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
