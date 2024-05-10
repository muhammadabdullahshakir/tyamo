import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoValueCardBattery extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subWidget;
  final Color? clr;
  final Color? textclr;

  TwoValueCardBattery(
      {required this.text,
      required this.value,
      this.subWidget,
      this.clr,
      this.textclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
          elevation: 10,
          color: clr ?? Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              subWidget ??
                  Text(
                    value,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        color: textclr ?? Color(0xFFF57D7C),
                        fontSize: 18),
                  ),
            ],
          )),
    );
  }
}
