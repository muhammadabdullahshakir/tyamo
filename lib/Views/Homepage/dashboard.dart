import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Widgets/Homepage/dashboard.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "DASHBOARD",
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Your Friend",
                style: GoogleFonts.nunito(
                  color: Color(0xff990099),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 25),
                                  child: CircularProfileAvatar(
                                    "",
                                    backgroundColor: Colors.cyan,
                                    borderColor: Colors.purple,
                                    borderWidth: 1,
                                    elevation: 20,
                                    radius: 45,
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
                              ),
                            ),
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Jayden Blake",
                                        style: GoogleFonts.nunito(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff4C9CFF),
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Bow Lane, West Freeway, Huston, Texas, United States",
                                          style: GoogleFonts.nunito(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                children: [
                                  Text(
                                    "Status",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Offline",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                        fontSize: 17,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            )),
                            SizedBox(
                              height: 30,
                              width: 2,
                              child: Container(
                                color: Colors.deepPurple,
                              ),
                            ),
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                children: [
                                  Text(
                                    "User Status",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "N/A",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                        fontSize: 17,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            )),
                            SizedBox(
                              height: 30,
                              width: 2,
                              child: Container(
                                color: Colors.deepPurple,
                              ),
                            ),
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    "Mood NA",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/device.png",
                    btnText: "Device Info",
                    clr: [
                      Color(0xff4FC174),
                      Color(0xff00D7A9),
                    ],
                  ),
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/galery.png",
                    btnText: "Gallery",
                    clr: [
                      Color(0xffF7DB00),
                      Color(0xffF7A100),
                    ],
                  ),
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/smile.png",
                    btnText: "Mood",
                    clr: [
                      Color(0xff9A01D6),
                      Color(0xffC701D6),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Our Features",
                style: GoogleFonts.nunito(
                  color: Color(0xff004C99),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/right-arrow.png",
                      btnText: "Playlist",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/placeholder.png",
                      btnText: "Location",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/task-actions.png",
                      btnText: "To-do-List",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/notebook.png",
                      btnText: "Diary",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/locked.png",
                      btnText: "Surprise Notes",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/night.png",
                      btnText: "Horoscopes",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/sos.png",
                      btnText: "Emergency",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                  Flexible(
                    child: DashboardGradientFeature(
                      iconImg: "assets/dashboard/night.png",
                      btnText: "Activity",
                      clr: [Colors.white, Colors.white],
                      weight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
