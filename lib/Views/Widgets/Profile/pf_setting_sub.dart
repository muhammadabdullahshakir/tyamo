import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PfSettingSub extends StatelessWidget {
  final String title;
  final Widget? secondaryWidget;
  PfSettingSub({required this.title, this.secondaryWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500, color: Colors.black),
              ),
              secondaryWidget ??
                  Icon(
                    FontAwesomeIcons.arrowRight,
                    size: 14,
                  ),
            ],
          ),
        ));
  }
}
