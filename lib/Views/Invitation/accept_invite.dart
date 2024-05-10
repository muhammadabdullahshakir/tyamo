import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';

class AcceptInvite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assets/images/logo.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        actions: null,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              color: Colors.purple,
              child: Text(
                "See recieved invitation",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    letterSpacing: 1),
                textScaleFactor: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    height: 70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 5, 5),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: CircularProfileAvatar(
                                  "",
                                  backgroundColor: Colors.blue,
                                  radius: 35,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "@abdul2010",
                                    style: GoogleFonts.poppins(fontSize: 17),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Text(
                                    "Abdul",
                                    style:
                                        GoogleFonts.poppins(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  GFButton(
                                    color: Color(0xff00D7CC),
                                    shape: GFButtonShape.pills,
                                    child: Text("Accept"),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GFButton(
                                    color: Colors.red,
                                    shape: GFButtonShape.pills,
                                    child: Text("Decline"),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                "assets/images/inviteFriend.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your recieved invitation are currently ",
                  style: GoogleFonts.nunito(
                      color: Colors.cyan, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Empty",
                  style: GoogleFonts.nunito(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
