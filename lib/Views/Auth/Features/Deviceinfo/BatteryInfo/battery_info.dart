import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/BatteryInfo/two_value_card_battery.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
                LinearGradient(colors: [Color(0xFFFAD585), Color(0xFFF47A7D)])),
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
              child: Container(
            child: Row(children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: TwoValueCardBattery(
                            text: "Status", value: "Discharge"),
                      ),
                      Expanded(
                        child: TwoValueCardBattery(
                            text: "Charging Type", value: "_"),
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
                      child: TwoValueCardBattery(
                        text: "Charging",
                        value: "N/A",
                        subWidget: SleekCircularSlider(
                          min: 0,
                          max: 100,
                          appearance: CircularSliderAppearance(
                              customColors: CustomSliderColors(
                                progressBarColor: Color(0xFFF57D7C),
                              ),
                              infoProperties: InfoProperties(
                                mainLabelStyle: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400),
                              ),
                              size: 100,
                              customWidths:
                                  CustomSliderWidths(progressBarWidth: 10)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TwoValueCardBattery(
                          text: "Temperature", value: "35.0"),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: TwoValueCardBattery(
                          text: "Battery Health", value: "Good"),
                    ),
                    Expanded(
                      child: TwoValueCardBattery(
                        text: "Battery Technology",
                        value: "Li-poly",
                      ),
                    ),
                  ],
                ),
              )),
            ]),
          )),
          Expanded(
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
                      "My Battery Status",
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
                              child: TwoValueCardBattery(
                                clr: Color(0xFFF57D7C),
                                text: "Status",
                                value: "Discharge",
                                textclr: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: TwoValueCardBattery(
                                  clr: Color(0xFFF57D7C),
                                  text: "Charging Type",
                                  textclr: Colors.white,
                                  value: "_"),
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
                            child: TwoValueCardBattery(
                              clr: Color(0xFFF57D7C),
                              text: "Charging",
                              value: "N/A",
                              textclr: Colors.white,
                              subWidget: SleekCircularSlider(
                                min: 0,
                                max: 100,
                                appearance: CircularSliderAppearance(
                                    customColors: CustomSliderColors(
                                      progressBarColor: Colors.white,
                                    ),
                                    infoProperties: InfoProperties(
                                      mainLabelStyle: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w400),
                                    ),
                                    size: 100,
                                    customWidths: CustomSliderWidths(
                                        progressBarWidth: 10)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TwoValueCardBattery(
                              clr: Color(0xFFF57D7C),
                              text: "Temperature",
                              value: "35.0",
                              textclr: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: TwoValueCardBattery(
                              clr: Color(0xFFF57D7C),
                              text: "Battery Health",
                              value: "Good",
                              textclr: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: TwoValueCardBattery(
                              text: "Battery Technology",
                              value: "Li-poly",
                              textclr: Colors.white,
                              clr: Color(0xFFF57D7C),
                            ),
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
