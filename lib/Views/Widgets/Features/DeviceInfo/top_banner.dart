import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBanner extends StatelessWidget {
  TopBanner({required this.title, required this.clr});

  final String title;
  final List<Color> clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: clr,
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.nunito(
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            fontSize: 20,
            color: Colors.white),
      ),
    );
  }
}
