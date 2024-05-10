import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';

class RegisterServices {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  UserController currentUser = UserController();
  //Future<bool> registerUserToFireBase(String email, String password) {

  // }
}
