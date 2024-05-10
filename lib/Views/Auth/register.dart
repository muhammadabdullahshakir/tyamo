import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/register_services.dart';
import 'package:tyamo/Views/Auth/login.dart';

import '../Widgets/Auth/auth_heading.dart';
import '../Widgets/Auth/auth_text_field.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerBtnController =
      RoundedLoadingButtonController();

  final RegisterServices registerServices = RegisterServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
              width: 40.w,
            ),
            AuthHeading(
              mainText: 'Sign Up to Tyamo ',
              subText: "To connected with \nyour partner ",
              logo: "assets/images/symbol.png",
              fontSize: 18.sp,
              logoSize: 25.sp,
            ),
            SizedBox(
              height: 30,
            ),
            AuthTextField(
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                controller: registerServices.emailController,
                obscureText: false,
                icon: Icons.alternate_email,
                size: 14.sp),
            SizedBox(
              height: 20,
            ),
            AuthTextField(
                keyboardType: TextInputType.text,
                labelText: "Password",
                controller: registerServices.passController,
                obscureText: true,
                icon: Icons.password,
                size: 14.sp),
            SizedBox(
              height: 30,
            ),
            AuthTextField(
                keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                controller: registerServices.confirmPassController,
                obscureText: true,
                icon: Icons.lock_reset,
                size: 15),
            SizedBox(
              height: 30,
            ),
            Hero(
              tag: "Auth",
              child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                controller: _registerBtnController,
                color: Color(0xff00C1AA),
                onPressed: () {
                  if (registerServices.passController.text ==
                      registerServices.confirmPassController.text) {
                    UserController().registerUser(
                        registerServices.emailController.text,
                        registerServices.passController.text);
                  } else {
                    AchievementView(
                        title: "Error",
                        color: const Color(0xffFF5252),
                        subTitle: "Passwords  do  not match",
                        listener: (status) {
                          print(status);
                        }).show(context);
                  }
                },
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "By registering you are accepting to our terms and conditions ",
                style: GoogleFonts.poppins(
                    color: Color(0xff808080),
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    letterSpacing: 0.5),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Registered? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: const Color(0xff5A585B),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: Login(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: Color(0xff2F76EA)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
