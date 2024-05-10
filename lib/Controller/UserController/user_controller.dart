import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyamo/Model/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyamo/Service/user_database.dart';

class UserController with ChangeNotifier {
  MyUser currentUser = MyUser();

  MyUser get getCurrentUser => currentUser;

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<bool> registerUser(
    String e,
    String p,
  ) async {
    MyUser user = MyUser();

    try {
      UserCredential authResult =
          await auth.createUserWithEmailAndPassword(email: e, password: p);
      UserCredential loginResult =
          await auth.signInWithEmailAndPassword(email: e, password: p);
      if (authResult.user != null) {
        print("Adding Info to Database");
        user.uid = authResult.user!.uid;
        user.email = authResult.user!.email;
        user.password = p;

        UserDatabase().createUserInDb(user);
      }
      return true;
      print(authResult);
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> loginUser(String e, String p) async {
    try {
      UserCredential loginResult =
          await auth.signInWithEmailAndPassword(email: e, password: p);

      if (loginResult.user != null) {
        currentUser =
            await UserDatabase().getUserInfoById(loginResult.user!.uid);
        print(currentUser.username);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signout() async {
    try {
      await auth.signOut();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  void setCurrentUser(MyUser user) {
    currentUser = user;
    notifyListeners();
  }

  Future<MyUser?> checkUserSignInfo() async {
    try {
      MyUser myUser = MyUser();
      myUser.isLoadingStartupData = true;
      currentUser = myUser;
      auth.authStateChanges().listen((event) async {
        if (event?.uid == null) {
          myUser.uid == null;
          myUser.isLoadingStartupData = false;
          setCurrentUser(myUser);
        } else {
          myUser.uid = event?.uid;
          myUser = await UserDatabase().getUserInfoById(auth.currentUser!.uid);
          myUser.isLoadingStartupData = false;
          setCurrentUser(myUser);
        }
      });
      print(myUser.uid);
      return myUser;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
