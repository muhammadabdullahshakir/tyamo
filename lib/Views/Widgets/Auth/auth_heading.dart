import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading(
      {required this.mainText,
      required this.subText,
      required this.logo,
      required this.fontSize,
      required this.logoSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  color: Color(0xff00205C)),
            ),
            Container(
                width: logoSize,
                height: logoSize,
                child: Image.asset(
                  logo,
                  filterQuality: FilterQuality.high,
                ))
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: Color(0xff00205C)),
        ),
      ],
    );
  }
}
