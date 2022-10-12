import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:get/get.dart';

class sertifikatPage extends StatelessWidget {
  const sertifikatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('ApSkil'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari Sesuatu',
                      // labelText: 'Cari Sesuatu',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'InterRegular'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              );
            },
            icon: SvgPicture.asset(
              'images/search.svg',
              color: Colors.white,
              alignment: Alignment.center,
            ),
          ),
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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    width: 260,
                    child: Text(
                      "Capaian",
                      style:
                          TextStyle(fontFamily: 'InterSemiBold', fontSize: 16),
                    )),
                Spacer(),
                Container(
                    width: 36,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Image.asset('images/download.png')),
                Spacer(),
                Container(
                    width: 36,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Image.asset('images/share.png'))
              ],
            ),
            SizedBox(height: bodyHeight * 0.03),
            Text(
              'Sertifikat kelulusan kelas UI/UX Design Level Beginner',
              style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 20),
            ),
            SizedBox(height: bodyHeight * 0.03),
            Image.asset('images/sertifikat.png')
          ],
        ),
      ),
    );
  }
}
