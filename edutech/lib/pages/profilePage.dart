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
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: <Color>[
                        Color.fromARGB(255, 62, 137, 99),
                        Color.fromARGB(255, 31, 71, 51)
                      ]),
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          elevation: 10,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset(
                              'images/rehan.jpg',
                              height: 80,
                              width: 80,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          user.email!,
                          style: TextStyle(
                              fontFamily: "InterSemiBold",
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CustomListTile(Icons.settings_outlined, 'Pengaturan'),
              CustomListTile(Icons.logout_outlined, 'Keluar'),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (() {
                  Get.toNamed('/editprofile');
                }),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Edit Profil',
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                  ],
                ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_rounded,
                      color: Colors.black,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      color: Colors.black,
                    ),
                    Text(
                      'User Admin Geming',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'InterSemiBold',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
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
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.01,
              ),
              Padding(
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
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              SizedBox(
                height: bodyHeight * 0.024,
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
                          Icons.arrow_right,
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
                      GestureDetector(
                        onTap: (() {
                          Get.toNamed('/kelas');
                        }),
                        child: Text(
                          'Kelas berlangsung',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'InterSemiBold',
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_right,
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
                        'Riwayat daftar kelas',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'InterSemiBold',
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
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
                    confirmBtnColor: Color.fromARGB(255, 62, 137, 99),
                  );
                }),
              ),
            ],
          ),
        ));
  }
}

class CustomListTile extends StatefulWidget {
  IconData icon;
  String text;

  CustomListTile(this.icon, this.text);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: InkWell(
          splashColor: Color.fromARGB(255, 62, 137, 99),
          onTap: () => {
            Alert(
              context: context,
              title: 'Peringatan',
              desc: 'Apakah anda yakin ingin keluar?',
              type: AlertType.warning,
              style: AlertStyle(backgroundColor: Colors.white),
              buttons: [
                DialogButton(
                  child: Text(
                    "Ya",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Get.toNamed('/profile');
                  },
                  width: 120,
                ),
                DialogButton(
                  child: Text(
                    "Tidak",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  width: 120,
                ),
              ],
            ).show()
          },
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(widget.icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.text,
                        style: TextStyle(fontFamily: 'Inter', fontSize: 16),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
