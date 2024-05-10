import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/UserInfo/one_value_card.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

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
            gradient:
                LinearGradient(colors: [Color(0xFFB893D6), Color(0xFF8CA5DB)])),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Location Status",
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 10,
              child: Container(
                width: double.infinity,
                height: 130,
                child: Center(
                    child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.pin_drop,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "North Loop, West Freeway, Huston Texas",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color(0xFF8e57fb),
                          ),
                        ),
                      ),
                    ),
                  )
                ])),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 200,
            child: OneValueCard(
              text: "United States",
              clr: Colors.white,
              textClr: Color(0xFF8e57fb),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Last Updated: 1 min ago",
            style: GoogleFonts.nunito(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My Location Status",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff989898)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                        color: Color(0xFF8e57fb),
                        elevation: 10,
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Center(
                              child: Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.pin_drop,
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    "North Loop, West Freeway, Huston Texas",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ])),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: 200,
                      child: OneValueCard(
                        text: "United States",
                        clr: Color(0xFF8e57fb),
                        textClr: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
