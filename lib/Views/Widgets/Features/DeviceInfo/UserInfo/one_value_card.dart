import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneValueCard extends StatelessWidget {
  final String text;
  final Color clr;
  final Color? textClr;

  OneValueCard({required this.text, required this.clr, this.textClr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Card(
        color: clr,
        elevation: 10,
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: textClr ?? Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
