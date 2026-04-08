import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:titan_information_app/Consts.dart';
import 'package:titan_information_app/Widgets/CustomAppbar.dart';
import '../Widgets/CustomDrawer.dart';
import '../Widgets/CustomFooterSection.dart';

class Servicespage extends StatelessWidget {
  const Servicespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Color.fromRGBO(26, 26, 26, 1),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(108),
        child: CustomAppBar(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(26, 26, 26, 1),
                border: Border.all(color: Color.fromRGBO(38, 38, 38, 1)),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/ServicesPage/OurService.png'),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 40, 16, 40),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    'Design',
                                    textAlign: TextAlign.left,

                                    style: constBarlowSemiBold,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 6),
                                  width: double.infinity,
                                  child: Text(
                                    'At Squareup, our design team is passionate about creating stunning, user-centric designs that captivate your audience and elevate your brand. We believe that great design is not just about aesthetics; it\'s about creating seamless and intuitive user experiences. ',
                                    textAlign: TextAlign.left,

                                    style: constBarlowRegularText,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                                  child: Container(
                                    height: 40,
                                    width: 216,
                                    padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(38, 38, 38, 1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),

                                    child: Text(
                                      'Our design services include:',
                                      textAlign: TextAlign.left,

                                      style: constBarlowRegularText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(38, 38, 38, 1),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/UX_container.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/UI_container.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/branding_continer.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 40, 16, 40),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    'Engineering',
                                    textAlign: TextAlign.left,

                                    style: constBarlowSemiBold,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 6),
                                  width: double.infinity,
                                  child: Text(
                                    'Our engineering team combines technical expertise with a passion for innovation to build robust and scalable digital solutions. We leverage the latest technologies and best practices to deliver high-performance applications tailored to your specific needs.',
                                    textAlign: TextAlign.left,

                                    style: constBarlowRegularText,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                                  child: Container(
                                    height: 40,

                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(38, 38, 38, 1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),

                                    child: Text(
                                      'Our engineering services include:',
                                      textAlign: TextAlign.left,

                                      style: constBarlowRegularText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(38, 38, 38, 1),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/web.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/mobile.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/custom.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 40, 16, 40),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    'Project Management',
                                    textAlign: TextAlign.left,

                                    style: constBarlowSemiBold,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 6),
                                  width: double.infinity,
                                  child: Text(
                                    'Our experienced project management team ensures that your projects are delivered on time, within budget, and according to your specifications. We follow industry-standard methodologies and employ effective communication and collaboration tools to keep you informed throughout the development process.',
                                    textAlign: TextAlign.left,

                                    style: constBarlowRegularText,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                                  child: Container(
                                    height: 40,

                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(38, 38, 38, 1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),

                                    child: Text(
                                      'Our project management services include:',
                                      textAlign: TextAlign.left,

                                      style: constBarlowRegularText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(38, 38, 38, 1),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/project.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/agile.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 00),
                                child: Image.asset(
                                  'assets/images/ServicesPage/quality.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Color(0xff1A1A1A),
                          backgroundBlendMode: BlendMode.overlay,
                          image: DecorationImage(
                            opacity: 0.1,
                            image: AssetImage(
                              'assets/images/ServicesPage/letUs.png',
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20 + 50, 0, 28),
                              child: Image.asset(
                                'assets/images/ServicesPage/LogoHollow.png',
                                scale: 16,
                              ),
                            ),

                            Center(
                              child: Text(
                                'Let us Bring your Ideas to Life in the Digital World.',
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
                                  'No matter which services you choose, we are committed to delivering exceptional results that exceed your expectations. Our multidisciplinary team works closely together to ensure seamless collaboration and a unified vision for your digital product.',
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
                              padding: const EdgeInsets.fromLTRB(0, 28, 0, 50),
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FooterSection(),
        ],
      ),
    );
  }
}
