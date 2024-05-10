import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGradientFeature extends StatelessWidget {
  final String iconImg;
  final String btnText;
  final List<Color> clr;
  final FontWeight? weight;

  DashboardGradientFeature({
    required this.iconImg,
    required this.btnText,
    required this.clr,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.00, 3.0),
              blurRadius: 3.0,
            ),
          ],
          gradient: LinearGradient(
            colors: clr,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 35,
                height: 35,
                child: Image.asset(
                  iconImg,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Flexible(
                child: Text(
                  btnText,
                  style:
                      GoogleFonts.nunito(fontWeight: weight ?? FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
