import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Profile/pf_setting_heading.dart';
import 'package:tyamo/Views/Widgets/Profile/pf_setting_sub.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                  color: Color(0xff671AFc),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 130),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Settings",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                                color: Colors.white))
                      ]),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    "",
                                    radius: 30,
                                    backgroundColor: Colors.transparent,
                                    borderWidth: 1,
                                    borderColor: Colors.deepPurpleAccent,
                                    elevation: 5.0,
                                    errorWidget: (context, url, error) {
                                      return Icon(
                                        Icons.face,
                                        size: 20,
                                      );
                                    },
                                    cacheImage: true,
                                    onTap: () async {},
                                    animateFromOldImageOnUrlChange: true,
                                    placeHolder: (context, url) {
                                      return Container(
                                        child: Center(
                                            child: CircularProgressIndicator()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Jayden Blake",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                        letterSpacing: 0.5,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.grey.shade200,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          PrSettingHeading(heading: "Profile Settings"),
                          PfSettingSub(
                            title: "Edit Name",
                          ),
                          PfSettingSub(
                            title: "Edit Phone number",
                          ),
                          PfSettingSub(
                            title: "Change Password",
                          ),
                          PfSettingSub(
                            title: "Email Status",
                            secondaryWidget: Row(children: [
                              Text(
                                "Not Verified",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 14,
                              ),
                            ]),
                          ),
                          PrSettingHeading(heading: "Notification Settings"),
                          PfSettingSub(
                            title: "Push Notifications",
                            secondaryWidget: GFToggle(
                                onChanged: (val) {},
                                enabledTrackColor: Colors.greenAccent,
                                value: true),
                          ),
                          PrSettingHeading(heading: "Application Settings"),
                          PfSettingSub(
                            title: "Push Notifications",
                            secondaryWidget: Row(children: [
                              Text(
                                "Not Verified",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 14,
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
