import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/profile_setup_services.dart';
import 'package:tyamo/Model/my_user.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:uuid/uuid.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../Widgets/Auth/auth_text_field.dart';

import 'package:image/image.dart' as Im;

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profileSetupBtnController =
      RoundedLoadingButtonController();

  final ProfileSetupServices profileSetupServices = ProfileSetupServices();

  bool isMale = true;
  File? file;
  bool isUploading = false;
  ImagePicker img = ImagePicker();
  String postId = Uuid().v4();

  handleChooseFromGallery() async {
    var getImage = await img.pickImage(
        source: ImageSource.gallery, maxWidth: 1080, maxHeight: 1000);

    File io = File(getImage!.path);
    setState(
      () {
        file = io;
      },
    );

    if (file != null) {
      uploadToStorage();
    }
  }

  uploadAvatarInFireStore({String? mediaUrl, String? uId}) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(uId)
        .update({"avatarUrl": mediaUrl});
  }

  uploadToStorage() async {
    setState(() {
      isUploading = true;
    });
    await compressImage();

    String? mediaUrl = await uploadImage();
    if (mediaUrl != null) {
      await uploadAvatarInFireStore(mediaUrl: mediaUrl, uId: myUser!.uid);
    }
  }

  Future<String?> uploadImage() async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("profilePictures/$postId.jpg")
        .putFile(file!);

    String? downloadUrl;

    return uploadTask.then((p0) => p0.ref.getDownloadURL());
  }

  compressImage() async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    Im.Image? imageFile = Im.decodeImage(file!.readAsBytesSync());
    final compressedImageFile = File("path/Image_$postId.jpg")
      ..writeAsBytesSync(Im.encodeJpg(imageFile!, quality: 90));
  }

  UserController? currentUser;
  MyUser? myUser;

  @override
  Widget build(BuildContext context) {
    currentUser = Provider.of<UserController>(context, listen: false);

    setState(() {
      myUser = currentUser!.getCurrentUser;
    });

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image.asset(
            "assets/images/logo.png",
            filterQuality: FilterQuality.high,
          ),
          height: 100,
          width: 100,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff000221),
                ),
                child: Text(
                  "Profile Setup",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CircularProfileAvatar(
                "",
                onTap: () {
                  handleChooseFromGallery();
                },
                backgroundColor: Colors.cyan,
                initialsText: Text(
                  "+",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextField(
                    keyboardType: TextInputType.text,
                    labelText: "Your name",
                    controller: profileSetupServices.nameController,
                    obscureText: false,
                    icon: Icons.face,
                    size: 15.sp),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextField(
                    keyboardType: TextInputType.text,
                    labelText: "Your username",
                    controller: profileSetupServices.userNameController,
                    obscureText: false,
                    icon: Icons.face,
                    size: 15.sp),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: isMale ? Colors.cyan : Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1.0, 9.0),
                                blurRadius: 40),
                          ]),
                      child: const Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: !isMale ? Colors.purple : Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1.0, 9.0),
                                blurRadius: 40),
                          ]),
                      child: const Icon(
                        Icons.female,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Hero(
                  tag: "Auth",
                  child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    controller: _profileSetupBtnController,
                    color: Color(0xff00C1AA),
                    onPressed: () {
                      Timer(Duration(seconds: 3), () {
                        _profileSetupBtnController.success();
                      });
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: InviteFriend()));
                    },
                    child: Text(
                      "Next",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
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
