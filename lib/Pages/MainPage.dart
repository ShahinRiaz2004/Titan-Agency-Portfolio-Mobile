import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Image menuLogo = Image.asset('assets/images/Button.png');

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Color(0xff1A1A1A),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xff1A1A1A)),
                width: double.infinity,
                height: 106,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/Top_Logo.png'),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            menuLogo = Image.asset(
                              'assets/images/Button.png',
                              colorBlendMode: BlendMode.darken,
                              color: Colors.black,
                            );
                          });
                        },
                        child: menuLogo,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.green),
                width: double.infinity,
                height: 1500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
