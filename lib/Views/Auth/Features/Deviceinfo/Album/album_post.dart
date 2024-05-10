import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu_custom/focused_menu.dart';
import 'package:focused_menu_custom/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as prefix0;

import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/Album/image_view.dart';

class AlbumPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                ),
                child: Container(
                  width: double.infinity,
                  height: 650,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                    child: Container(
                      color: Colors.black.withOpacity(0.7),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset("assets/Images/logo.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: GFAvatar(
                                  backgroundColor: Colors.blue,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: ImageView(
                                          url:
                                              "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png"),
                                    ));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Hero(
                                  tag:
                                      "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                                  child: Image.network(
                                    "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Container(
                              width: 250,
                              height: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  BalloonSlider(
                                    value: 0,
                                    onChanged: (value) {},
                                    showRope: false,
                                    onChangeEnd: (value) {},
                                    onChangeStart: (value) {},
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Caption",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w900, color: Colors.cyan),
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.edit,
                            color: Colors.cyan,
                          ),
                          onTap: () {
                            AwesomeDialog(
                              context: context,
                              animType: AnimType.scale,
                              dialogType: DialogType.noHeader,
                              title: "Edit Caption",
                              body: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: TextField(
                                    controller: null,
                                    decoration: InputDecoration(
                                        labelText: "Enter new caption",
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito"),
                                        fillColor: Colors.black,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Color(0xff671AFC),
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Color(0xff671AFC)))),
                                    keyboardType: TextInputType.multiline,
                                    minLines: 1,
                                    maxLines: null,
                                  ),
                                ),
                              ),
                              dismissOnBackKeyPress: true,
                              isDense: false,
                              btnOkText: "Confirm Caption",
                              btnOkOnPress: () {},
                            ).show();
                          },
                        ),
                      ],
                    ),
                    FocusedMenuHolder(
                      menuWidth: MediaQuery.of(context).size.width * 0.50,
                      blurSize: 2.0,
                      menuItemExtent: 45,
                      menuBoxDecoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      duration: Duration(microseconds: 100),
                      animateMenuItems: true,
                      blurBackgroundColor: Colors.black54,
                      menuOffset: 10.0,
                      bottomOffsetHeight: 80.0,
                      menuItems: [
                        FocusedMenuItem(
                          trailingIcon: Icon(FontAwesomeIcons.copy),
                          onPressed: () {},
                          title: Text(
                            "Copy",
                            textScaleFactor: 1,
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        FocusedMenuItem(
                          backgroundColor: Colors.red,
                          trailingIcon: Icon(
                            FontAwesomeIcons.edit,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          title: Text(
                            "Edit",
                            textScaleFactor: 1,
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                      child: ExpandableText(
                        "We'll place the caption here ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400, color: Colors.black),
                        expandText: 'show more',
                        collapseText: "show less",
                        maxLines: 2,
                        linkColor: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Comments",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          letterSpacing: 1,
                          color: Colors.purple),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return FocusedMenuHolder(
                          onPressed: () {},
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 2.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          duration: Duration(microseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10.0,
                          bottomOffsetHeight: 80.0,
                          menuItems: [
                            FocusedMenuItem(
                              trailingIcon: Icon(FontAwesomeIcons.copy),
                              onPressed: () {},
                              title: Text(
                                "Copy",
                                textScaleFactor: 1,
                                style: GoogleFonts.nunito(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            FocusedMenuItem(
                              backgroundColor: Colors.red,
                              trailingIcon: Icon(
                                FontAwesomeIcons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                              title: Text(
                                "Delete",
                                textScaleFactor: 1,
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                          child: ListTileMoreCustomizable(
                            title: Text(
                              "@Faizan",
                              textScaleFactor: 1,
                              style: GoogleFonts.nunito(
                                  fontSize: 16, color: Colors.cyan),
                            ),
                            leading: GFAvatar(
                              backgroundColor: Colors.blue,
                              size: 25,
                            ),
                            horizontalTitleGap: 0.0,
                            minVerticalPadding: 10.0,
                            minLeadingWidth: 60,
                            contentPadding: EdgeInsets.all(0),
                            isThreeLine: false,
                            subtitle: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "This is my Comment",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.nunito(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                            trailing: Text(
                              "1 min ago",
                              style: GoogleFonts.nunito(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: null,
                            onLongPress: null,
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: null,
                    focusNode: null,
                    keyboardType: TextInputType.multiline,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: 3,
                    minLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        hintText: "Start a conversation",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nunito",
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(60),
                            ),
                            borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.orange),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        )
      ])),
    );
  }
}
