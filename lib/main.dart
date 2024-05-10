import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:flutter/material.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/Album/album_post.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/Album/album_new_post.dart.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/BatteryInfo/battery_info.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/UserStatus/user_status.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/device_info.dart';
import 'package:tyamo/Views/Auth/Features/GeneralInfo/general_info.dart';
import 'package:tyamo/Views/Auth/Features/LocationInfo/location_info.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Homepage/homepage.dart';
import 'package:tyamo/Views/Invitation/accept_invite.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Views/Profile/profile_settings.dart';
import 'package:tyamo/Views/Auth/Features/Deviceinfo/Album/album_main.dart';
import 'package:tyamo/Views/Widgets/Auth/splash.dart';
import 'package:tyamo/Views/Widgets/Auth/splash_loadar_animation.dart';
import 'package:tyamo/Views/Widgets/Features/DeviceSpecs/device_specs.dart';
import 'package:tyamo/firebase_options.dart';

import 'Views/Profile/profile_setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserController(),
        )
      ],
      child: ResponsiveSizer(
        builder: (BuildContext, Orientation, ScreenType) {
          return MaterialApp(
            title: 'Tyamo',
            home: Splash(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
