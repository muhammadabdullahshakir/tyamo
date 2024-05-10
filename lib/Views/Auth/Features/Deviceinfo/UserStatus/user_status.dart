import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/UserInfo/one_value_card.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceInfo/UserInfo/two_value_card.dart';

class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    "AWAY",
    "DO NOT DISTURB",
    "DRIVING",
  ];

  List<String> status2 = ["OUTDOORS", "SLEEPING", "WORKING"];
  String selectedStatus = "AWAY";
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
                LinearGradient(colors: [Color(0xFF86AAEA), Color(0xFF92E9E3)])),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Friend's Status",
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
                            child: Column(children: [
                              Expanded(
                                child: Container(
                                  child: TwoValueCard(
                                      text: "User is",
                                      value: "Online",
                                      textClr: Color(0xff23AbE1)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: TwoValueCard(
                                      text: "Last App Action",
                                      value: "2 minutes ago",
                                      textClr: Color(0xff23AbE1)),
                                ),
                              )
                            ]),
                          ),
                          Expanded(
                              child: Container(
                            child: TwoValueCard(
                                text: "User Status",
                                value: "Driving",
                                textClr: Color(0xff23AbE1)),
                          )),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My Status ",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff989898),
                                  fontSize: 16),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Eating",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff23AbE1),
                                  fontSize: 16),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: status.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedStatus = status[index];
                                  });
                                },
                                child: OneValueCard(
                                    text: status[index],
                                    clr: selectedStatus == status[index]
                                        ? Colors.blue
                                        : Color(0xFF84abe4)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedStatus = status2[index];
                                  });
                                },
                                child: OneValueCard(
                                  text: status2[index],
                                  clr: selectedStatus == status2[index]
                                      ? Colors.blue
                                      : Color(0xFF84abe4),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
