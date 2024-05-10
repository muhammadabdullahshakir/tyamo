import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/gradient_button_container.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/top_banner.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
      body: Column(
        children: [
          TopBanner(
            title: 'Device Info',
            clr: [
              Color(0xff4FC174),
              Color(0xffA00D7A9),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 10,
                            child: GradientButtonContainer(
                                title: "User Status",
                                clr: [
                                  Color(0xFF86AAE8),
                                  Color(0xFF92E9E3),
                                ],
                                overlayColor: Colors.cyan,
                                isGradientVertical: true),
                          ),
                          Expanded(
                            flex: 6,
                            child: GradientButtonContainer(
                                title: "Battery",
                                clr: [
                                  Color(0xFFFAD585),
                                  Color(0xFFF47A7D),
                                ],
                                overlayColor: Colors.orangeAccent,
                                isGradientVertical: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: GradientButtonContainer(
                          title: "General",
                          clr: [
                            Color(0xFF50C9C2),
                            Color(0xFF95DEDA),
                          ],
                          overlayColor: Colors.teal.shade300,
                          isGradientVertical: true),
                    ),
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: GradientButtonContainer(
                          title: "Device Specs",
                          clr: [
                            Color(0xff02A9AF),
                            Color(0xFF00CDAC),
                          ],
                          overlayColor: Color(0xff01BCAA),
                          isGradientVertical: true),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: GradientButtonContainer(
                                title: "Location",
                                clr: [
                                  Color(0xFF8893D6),
                                  Color(0xFF8CA5DB),
                                ],
                                overlayColor: Color(0xffB159C6),
                                isGradientVertical: false),
                          ),
                          Expanded(
                            flex: 10,
                            child: GradientButtonContainer(
                                title: "Orientation",
                                clr: [
                                  Color(0xFFF2709B),
                                  Color(0xFFFF9370),
                                ],
                                overlayColor: Color(0xffF98583),
                                isGradientVertical: true),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
