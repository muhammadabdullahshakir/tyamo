import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Homepage/dashboard.dart';
import 'package:tyamo/Views/Profile/profile.dart';
import 'package:tyamo/Views/Widgets/Homepage/drawer_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();

  List<IconData> iconsList = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 1;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Profile(),
        DashBoard(),
        Container(
          color: Colors.green,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepagekey,
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
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _homepagekey.currentState!.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              "assets/dashboard/message.png",
            ),
          ),
        ],
      ),
      drawer: Container(
        width: 280,
        child: GFDrawer(
          child: Column(
            children: [
              Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 25),
                              child: CircularProfileAvatar(
                                "",
                                backgroundColor: Colors.cyan,
                                borderColor: Colors.purple,
                                borderWidth: 1,
                                elevation: 20,
                                radius: 40,
                                cacheImage: true,
                                errorWidget: (context, url, error) {
                                  return Icon(
                                    Icons.face,
                                    size: 5,
                                  );
                                },
                                onTap: () {
                                  pageController.animateToPage(0,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                  Navigator.of(context).pop();
                                },
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
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Abul shreeek",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      letterSpacing: 1),
                                ),
                                Text(
                                  "ab.1@tyamo.com",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      color: Colors.cyan),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              Expanded(
                  flex: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Premium",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                flex: 0,
                child: Divider(),
              ),
              Column(
                children: [
                  DrawerListTile(
                      iconName: FontAwesomeIcons.solidCreditCard,
                      tileTitile: "Subscription"),
                  DrawerListTile(
                      iconName: Icons.settings, tileTitile: "Settings"),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.circleQuestion,
                      tileTitile: "Help"),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.message,
                      tileTitile: "Feedback"),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.share,
                      tileTitile: "Tell Others"),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.starHalfStroke,
                      tileTitile: "Rate the App"),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.rightFromBracket,
                      tileTitile: "Sign Out")
                ],
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconsList,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(p0,
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
