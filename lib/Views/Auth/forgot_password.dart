import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Interfaces/Auth/forgot_password_services.dart';

import '../Widgets/Auth/auth_heading.dart';
import '../Widgets/Auth/auth_text_field.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgotPasswordBtnController =
      RoundedLoadingButtonController();

  final ForgotPasswordServices forgotPasswordServices =
      ForgotPasswordServices();

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
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
                width: 40.w,
              ),
              AuthHeading(
                mainText: 'Fogot your Password',
                subText: "",
                logo: "assets/images/symbol.png",
                fontSize: 19.sp,
                logoSize: 25.sp,
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/images/forgot-password.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "To request for a new one, type your email addresss below. A link to reset the password will be sent to that email",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13.sp),
              ),
              SizedBox(
                height: 30,
              ),
              AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  obscureText: false,
                  controller: forgotPasswordServices.emailController,
                  icon: Icons.alternate_email,
                  size: 14.sp),
              SizedBox(
                height: 20,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _forgotPasswordBtnController,
                  color: Color(0xff00C1AA),
                  onPressed: () {},
                  child: Text(
                    "Send",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
