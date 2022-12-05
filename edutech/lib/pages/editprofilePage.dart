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

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        actions: <Widget>[
          IconButton(
            onPressed: (() {
              Get.toNamed('/notification');
            }),
            icon: SvgPicture.asset(
              'images/bell.svg',
              color: Colors.white,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ubah data diri',
                style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  // hintText: 'What do people call you?',
                  labelText: 'Nama lengkap',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone_android_outlined),
                  // hintText: 'What do people call you?',
                  labelText: 'No Handphone',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.badge_outlined),
                  // hintText: 'What do people call you?',
                  labelText: 'Tanggal lahir',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Get.toNamed('/profil');
                    }),
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 16, right: 16),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(75, 62, 137, 99),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text('Batalkan')),
                  ),
                  SizedBox(
                    width: bodyHeight * 0.008,
                  ),
                  GestureDetector(
                    onTap: (() {
                      Get.toNamed('/profil');
                    }),
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 16, right: 16),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 62, 137, 99),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text('Simpan')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
