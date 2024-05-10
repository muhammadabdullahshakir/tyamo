import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/UserInfo/two_value_card.dart';

class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
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
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
          actions: null,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF02A9AF), Color(0xFF00CDAC)])),
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Battery Status",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                  text: "Total Ram", value: "5.36 GB"),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                  text: "Refresh Rate", value: "60 Hz"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: TwoValueCard(
                                  text: "Fingerprint Sensor", value: "Present"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: TwoValueCard(
                                  text: "Fingerprint Sensor", value: "Yes"),
                            )),
                      ]),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(children: [
                        Expanded(
                            child: Container(
                          child: TwoValueCard(
                              text: "Internal Memory",
                              value: "59.36 / 110.5 GB"),
                        )),
                        Expanded(
                            child: Container(
                          child: TwoValueCard(
                              text: "External Memory", value: "N/A"),
                        )),
                        Expanded(
                            child: Container(
                          child: TwoValueCard(
                              text: "Screen Size", value: "6.06 inches"),
                        )),
                        Expanded(
                            child: Container(
                          child: TwoValueCard(
                              text: "Resolution", value: "2134x1080"),
                        )),
                      ]),
                    )),
                  ],
                ),
              ),
            ])));
  }
}
