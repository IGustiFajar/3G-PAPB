import 'package:cool_alert/cool_alert.dart';
import 'package:edutech/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:edutech/pages/BerandaPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  String errorMessage = '';
  String ImageUrl = " ";
  bool isObscurePassword = true;

  void pickUploadImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 512,
      maxHeight: 512,
      imageQuality: 75,
    );

    Reference ref = FirebaseStorage.instance.ref().child("profilepic.jpg");

    await ref.putFile(File(image!.path));
    ref.getDownloadURL().then((value) {
      print(value);
      setState(() {
        ImageUrl = value;
      });
    });
  }

  Future SignOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pop(context);
      errorMessage = '';
    } on FirebaseAuthException catch (error) {
      errorMessage = error.message!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'images/bell.svg',
              color: Colors.white,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.edit_outlined,
                  color: Colors.grey,
                ),
                Text(
                  'Edit Profil',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                    child: ClipOval(
                      child: ImageUrl == " "
                          ? Image.asset('images/rehan.jpg')
                          : Image.network(ImageUrl,
                              height: 200, width: 200, fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 120,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.white),
                          color: Colors.green),
                      child: GestureDetector(
                        onTap: () {
                          pickUploadImage();
                        },
                        child: Icon(
                          Icons.photo_camera,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: bodyHeight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    user.email!,
                    style: TextStyle(
                      fontFamily: "InterSemiBold",
                      fontSize: 20,
                      color: Color.fromARGB(255, 62, 137, 99),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                border: Border.all(
                    color: Color.fromARGB(255, 224, 224, 224), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.badge_outlined,
                      color: Colors.black,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      color: Colors.black,
                    ),
                    Text(
                      '28 Juli 2000',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterSemiBold',
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed('/sertifikat');
              }),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 224, 224),
                  border: Border.all(
                      color: Color.fromARGB(255, 224, 224, 224), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.workspace_premium_outlined,
                        color: Colors.black,
                      ),
                      VerticalDivider(
                        width: 20,
                        thickness: 5,
                        color: Colors.black,
                      ),
                      Text(
                        'Sertifikat Saya',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'InterSemiBold',
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                border: Border.all(
                    color: Color.fromARGB(255, 224, 224, 224), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: Colors.black,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      color: Colors.black,
                    ),
                    Text(
                      'Kelas Saya',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterSemiBold',
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                border: Border.all(
                    color: Color.fromARGB(255, 224, 224, 224), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android_outlined,
                      color: Colors.black,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      color: Colors.black,
                    ),
                    Text(
                      '+628123456789',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterSemiBold',
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                border: Border.all(
                    color: Color.fromARGB(255, 224, 224, 224), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.black,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      color: Colors.black,
                    ),
                    Text(
                      user.email!,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterSemiBold',
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                border: Border.all(
                    color: Color.fromARGB(255, 224, 224, 224), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.history_outlined,
                      color: Colors.black,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      color: Colors.black,
                    ),
                    Text(
                      'Riwayat Pembelian',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterSemiBold',
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.05,
            ),
            InkWell(
              child: Container(
                height: bodyHeight * 0.05,
                width: 370,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(87, 255, 4, 4),
                  border: Border.all(
                      color: Color.fromARGB(255, 255, 132, 132), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Keluar',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'InterSemiBold',
                    ),
                  ),
                ),
              ),
              onTap: (() {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.confirm,
                  text: 'Do you want to logout',
                  confirmBtnText: 'Yes',
                  cancelBtnText: 'No',
                  onConfirmBtnTap: SignOut,
                  confirmBtnColor: Colors.green,
                );
                // Alert(
                //   context: context,
                //   title: 'Peringatan',
                //   desc: 'Apakah anda yakin ingin keluar?',
                //   type: AlertType.warning,
                //   style: AlertStyle(backgroundColor: Colors.white),
                //   buttons: [
                //     DialogButton(
                //       child: Text(
                //         "Ya",
                //         style: TextStyle(color: Colors.white, fontSize: 20),
                //       ),
                //       onPressed: () {
                //         SignOut();
                //       },
                //       width: 120,
                //     ),
                //     DialogButton(
                //       child: Text(
                //         "Tidak",
                //         style: TextStyle(color: Colors.white, fontSize: 20),
                //       ),
                //       onPressed: () => Navigator.pop(context),
                //       width: 120,
                //     ),
                //   ],
                // ).show();
              }),
            ),
          ],
        ),
        // crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  // Widget buildTextField(
  //     String labeltext, String placeholder, bool isPasswordTextField) {
  //   return Padding(
  //     padding: EdgeInsets.only(bottom: 30),
  //     child: TextField(
  //       obscureText: isPasswordTextField ? isObscurePassword : false,
  //       decoration : InputDecoration(
  //         suffixIcon: isPasswordTextField ?
  //          IconButton(onPressed: () {}, icon: Icon(Icons.remove))
  //         ),
  //     ),
  //   );
  // }
}
