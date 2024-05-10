import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  String url;

  ImageView({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
          heroAttributes: PhotoViewHeroAttributes(tag: ""),
          imageProvider: NetworkImage(
              "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png")),
    );
  }
}
