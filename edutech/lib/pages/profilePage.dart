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

  void pickUploadImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 120,
      maxHeight: 120,
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
        actions: <Widget>[
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    pickUploadImage();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 24),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: ImageUrl == " "
                          ? Icon(
                              Icons.person,
                              size: 80,
                              color: Colors.white,
                            )
                          : Image.network(ImageUrl),
                    ),
                  ),
                ),
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
            Spacer(),
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
      ),
    );
  }
}
