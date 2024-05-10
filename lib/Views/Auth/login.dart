import 'package:responsive_sizer/responsive_sizer.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/login_services.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Profile/profile_setup.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginBtnController =
      RoundedLoadingButtonController();

  final LoginSerivces loginSerivces = LoginSerivces();

  void loginbtn() {
    print("The button was pressed");
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
                width: 40.w,
              ),
              AuthHeading(
                mainText: 'Sign in to Tyamo ',
                subText: "To connect with \nyour partner ",
                logo: "assets/images/symbol.png",
                fontSize: 18.sp,
                logoSize: 25.sp,
              ),
              SizedBox(
                height: 50,
              ),
              AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  obscureText: false,
                  controller: loginSerivces.emailController,
                  icon: Icons.alternate_email,
                  size: 14.sp),
              SizedBox(
                height: 20,
              ),
              AuthTextField(
                  keyboardType: TextInputType.none,
                  labelText: "Password",
                  controller: loginSerivces.passController,
                  obscureText: true,
                  icon: Icons.password,
                  size: 14.sp),
              SizedBox(
                height: 30,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _loginBtnController,
                  color: Color(0xff00C1AA),
                  onPressed: () {
                    UserController().loginUser(
                        loginSerivces.emailController.text,
                        loginSerivces.passController.text);

                    // Timer(Duration(seconds: 3), () {
                    //   _loginBtnController.success();
                    // });
                    // Navigator.pushReplacement(
                    //     context,
                    //     PageTransition(
                    //         type: PageTransitionType.fade,
                    //         child: ProfileSetup()));
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: ForgotPassword()));
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password? ",
                    style: GoogleFonts.poppins(
                        color: Color(0xffC1272D),
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Color(0xff5A585B)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Register()));
                    },
                    child: Text(
                      "Sign Up",
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
      ),
    );
  }
}
