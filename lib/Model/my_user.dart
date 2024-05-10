import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? displayname;
  String? avatarUrl;
  String? friendUid;
  String? chatRoomId;
  String? gender;
  String? phone;
  bool? isLoadingStartupData;
  Timestamp? accountCreated;

  MyUser(
      {this.accountCreated,
      this.avatarUrl,
      this.chatRoomId,
      this.displayname,
      this.email,
      this.friendUid,
      this.gender,
      this.password,
      this.phone,
      this.uid,
      this.isLoadingStartupData,
      this.username});
}
