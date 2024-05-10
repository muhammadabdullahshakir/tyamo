import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

bool more = false;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "My Profile",
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 25,
              letterSpacing: 2,
            ),
            textScaleFactor: 1,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/doodle.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              borderColor: Colors.purple,
              borderWidth: 1,
              elevation: 20,
              radius: 80,
              cacheImage: true,
              errorWidget: (context, url, error) {
                return Icon(
                  Icons.face,
                  size: 5,
                );
              },
              onTap: () {},
              animateFromOldImageOnUrlChange: true,
              placeHolder: ((context, url) {
                return Container(
                    child: Center(
                  child: CircularProgressIndicator(),
                ));
              }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Jaden Blake",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "@jay95",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Colors.purple,
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Edit Profile Details",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.purple),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CardDetailRow(
                      type: "Email",
                      clr: Colors.grey.shade200,
                      icon: Icon(Icons.alternate_email),
                      val: "jayden@tyamo.com"),
                  CardDetailRow(
                      type: "Country",
                      clr: Colors.white,
                      icon: Icon(Icons.flag_outlined),
                      val: "United States"),
                  CardDetailRow(
                      type: "Phone Number",
                      clr: Colors.grey.shade200,
                      icon: Icon(Icons.phone),
                      val: "Not Currently Set"),
                  more
                      ? CardDetailRow(
                          type: "Gender",
                          clr: Colors.white,
                          icon: Icon(FontAwesomeIcons.venusMars),
                          val: "Male")
                      : Container(),
                  more
                      ? CardDetailRow(
                          type: "Partner",
                          clr: Colors.grey.shade200,
                          icon: Icon(Icons.person_2_outlined),
                          val: "Robbie Williams")
                      : Container(),
                  more
                      ? CardDetailRow(
                          type: "UID",
                          clr: Colors.white,
                          icon: Icon(Icons.fingerprint),
                          val: "WP297652xhjgfs28829kd")
                      : Container(),
                  more
                      ? CardDetailRow(
                          type: "Account Created",
                          clr: Colors.grey.shade200,
                          icon: Icon(Icons.schedule),
                          val: "24-18-22")
                      : Container(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Colors.grey.shade200,
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade200),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)))),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                more ? "- Show Less" : "+ Show More",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffff9966), Color(0xffff5e62)],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style:
                          GoogleFonts.nunito(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style: GoogleFonts.nunito(color: Colors.white),
                    ),
                    Text(
                      "N/A",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Oxffff5e62 {}

class CardDetailRow extends StatelessWidget {
  CardDetailRow(
      {required this.type,
      required this.clr,
      required this.icon,
      required this.val});

  final String type;
  final Icon icon;
  final String val;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      val,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: val == "Not Currently Set"
                              ? Colors.red
                              : Colors.black),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
