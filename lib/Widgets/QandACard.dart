import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QandACard extends StatelessWidget {
  const QandACard({
    super.key,
    required this.Padder,
    required this.QandA_Ext_But,
    required double turns,
    required bool isExpanded,
    required this.onPressed,
    required this.title,
    required this.text,
    required this.Number,
  }) : _turns = turns,
       _isExpanded = isExpanded;

  final double Padder;
  final Color QandA_Ext_But;
  final double _turns;
  final bool _isExpanded;
  final VoidCallback onPressed;
  final String text;
  final String title;
  final String Number;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, Padder),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),

                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(46, 46, 46, 1),
                        Color.fromRGBO(46, 46, 46, 0.6),
                        Color.fromRGBO(46, 46, 46, 0),
                      ],
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(36, 36, 36, 1),
                          Color.fromRGBO(36, 36, 36, 0),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Number,
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: QandA_Ext_But,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: QandA_Ext_But,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onPressed,
                  icon: AnimatedRotation(
                    turns: _turns,
                    duration: Duration(milliseconds: 150),
                    child: Icon(Icons.add, color: QandA_Ext_But, size: 30),
                  ),
                ),
              ],
            ),

            AnimatedCrossFade(
              firstChild: Container(),
              secondChild: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(text, style: TextStyle(color: Colors.white70)),
              ),
              crossFadeState: _isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 200),
            ),
          ],
        ),
      ),
    );
  }
}
