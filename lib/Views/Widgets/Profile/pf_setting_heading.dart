import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSettingHeading extends StatelessWidget {
  final String heading;

  PrSettingHeading({required this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        heading,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: Color(0xff671AFC),
        ),
      ),
    );
  }
}
