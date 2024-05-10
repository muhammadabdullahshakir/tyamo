import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu_custom/focused_menu.dart';
import 'package:focused_menu_custom/modals.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/Album/album_post.dart';
import 'package:tyamo/Views/Widgets/Album/gallery_header.dart';

class MyAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        GalleryHeader(
          context: context,
          description: "Tell your partner what this album means to you!",
          isEditable: true,
          name: "Faizan",
          toValue: "8",
          tuValue: "0",
        ),
        Container(
            child: StaggeredGridView.countBuilder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          crossAxisCount: 4,
          itemCount: 6,
          itemBuilder: (context, index) {
            return FocusedMenuHolder(
                menuWidth: MediaQuery.of(context).size.width * 0.50,
                blurSize: 2.0,
                menuItemExtent: 45,
                menuBoxDecoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                duration: const Duration(milliseconds: 100),
                animateMenuItems: true,
                blurBackgroundColor: Colors.black54,
                // Open Focused-Menu on Tap rather than Long Press
                menuOffset:
                    10.0, // Offset value to show menuItem from the selected item
                bottomOffsetHeight:
                    80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                menuItems: <FocusedMenuItem>[
                  // Add Each FocusedMenuItem  for Menu Options
                  FocusedMenuItem(
                      title: Text("Open"),
                      trailingIcon: Icon(Icons.open_in_new),
                      onPressed: () {}),

                  FocusedMenuItem(
                      title: Text(
                        "Delete",
                        style: TextStyle(color: Colors.red),
                      ),
                      trailingIcon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                ],
                onPressed: () {},
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: AlbumPost(),
                              ));
                        },
                        child: Hero(
                            tag:
                                "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                            child: Image.network(
                              "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                    )));
          },
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 3),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 15.0,
        ))
      ]),
    );
  }
}
