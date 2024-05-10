import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tyamo/Model/my_user.dart';

class UserDatabase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<bool> createUserInDb(MyUser user) async {
    try {
      await firestore.collection("users").doc(user!.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "username": user.username,
        "displayName": user.displayname,
        "avatarURL": user.avatarUrl,
        "chatRoomId": user.chatRoomId,
        "frienduId": user.friendUid,
        "gender": user.gender,
        "phone": user.phone,
        "accountCreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myUser = MyUser();

    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("users")
        .doc("K23bjYuTrkRdWiGVnHxJ6SjKYeC2")
        .get();

    myUser.uid = documentSnapshot.data()!["uid"];
    myUser.email = documentSnapshot.data()!["email"];
    myUser.avatarUrl = documentSnapshot.data()!["avatarURL"];
    myUser.username = documentSnapshot.data()!["username"];
    myUser.displayname = documentSnapshot.data()!["displayName"];
    myUser.friendUid = documentSnapshot.data()!["friendUid"];
    myUser.chatRoomId = documentSnapshot.data()!["chatRoomId"];
    myUser.gender = documentSnapshot.data()!["gender"];
    myUser.phone = documentSnapshot.data()!["phone"];

    return myUser;
  }
}
