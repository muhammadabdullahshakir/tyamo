import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerListTile extends StatelessWidget {
  final IconData iconName;
  final String tileTitile;

  DrawerListTile({required this.iconName, required this.tileTitile});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                iconName,
                color: Color(0xff00D7CC),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                tileTitile,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Color(0xff2a3d66)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
