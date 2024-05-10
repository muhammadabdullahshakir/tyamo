import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';
import 'package:tyamo/Views/Root/root.dart';
import 'package:tyamo/Views/Widgets/Auth/splash_loadar_animation.dart';

class Splash extends StatelessWidget {
  UserController userController = UserController();

  @override
  Widget build(BuildContext context) {
    userController = Provider.of<UserController>(context, listen: false);
    if (userController.currentUser.uid == null) {
      return FutureBuilder(
        future: userController.checkUserSignInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Root();
          } else {
            return SplashAnimator();
          }
        },
      );
    } else {
      return Root();
    }
  }
}
