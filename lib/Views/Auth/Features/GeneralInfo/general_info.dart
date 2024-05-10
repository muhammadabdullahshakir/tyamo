import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/BatteryInfo/two_value_card_battery.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/UserInfo/two_value_card.dart';
import 'package:tyamo/Views/Widgets/Features/GeneralInfo/two_widget_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
                LinearGradient(colors: [Color(0xFF50C9C2), Color(0xFF95DEDA)])),
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
            flex: 10,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: TwoValueCard(
                              text: "Screen State",
                              value: "UNLOCKED",
                              textClr: Color(0xFF50C9C2)),
                        ),
                        Expanded(
                          flex: 2,
                          child: TwoWidgetCard(
                              text1: "System Volume",
                              value1: "0/7",
                              textClr1: Color(0xFF50C9C2),
                              text2: "Media Volume",
                              value2: "4/7",
                              textClr2: Color(0xFF50C9C2)),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TwoWidgetCard(
                              text1: "Light Activity",
                              value1: "Dim Light",
                              textClr1: Color(0xFF50C9C2),
                              text2: "Light Intensity",
                              value2: "4",
                              textClr2: Color(0xFF50C9C2)),
                        ),
                        Expanded(
                          child: TwoValueCard(
                              text: "Brightness",
                              value: "5.88%",
                              textClr: Color(0xFF50C9C2)),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
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
                          "My General Info",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff989898)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Row(children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                      text: "Screen State",
                                      value: "UNLOCKED",
                                      textClr: Colors.white,
                                      clr: Color(0xFF50C9C2)),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: TwoWidgetCard(
                                    text1: "System Volume",
                                    value1: "0/7",
                                    textClr1: Colors.white,
                                    clr1: Color(0xFF50C9C2),
                                    textClr2: Colors.white,
                                    clr2: Color(0xFF50C9C2),
                                    text2: "Media Volume",
                                    value2: "4/7",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: TwoWidgetCard(
                                  text1: "Light Activity",
                                  value1: "Dim Light",
                                  textClr1: Colors.white,
                                  clr1: Color(0xFF50C9C2),
                                  textClr2: Colors.white,
                                  clr2: Color(0xFF50C9C2),
                                  text2: "Light Intensity",
                                  value2: "4",
                                ),
                              ),
                              Expanded(
                                child: TwoValueCard(
                                    text: "Brightness",
                                    value: "5.88%",
                                    textClr: Colors.white,
                                    clr: Color(0xFF50C9C2)),
                              ),
                            ],
                          ),
                        )),
                      ]),
                    )),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
