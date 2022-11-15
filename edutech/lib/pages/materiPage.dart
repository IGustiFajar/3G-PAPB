import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:get/get.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      width: 260,
                      child: Text(
                        "Materi Kelas",
                        style: TextStyle(
                            fontFamily: 'InterSemiBold', fontSize: 16),
                      )),
                  Spacer(),
                  Container(
                      width: 36,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Image.asset('images/like.png')),
                  Spacer(),
                  Container(
                      width: 36,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Image.asset('images/share.png'))
                ],
              ),
              SizedBox(height: bodyHeight * 0.024),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: bodyHeight * 0.04,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border:
                            Border.all(color: Color.fromARGB(255, 255, 62, 62)),
                        color: Color.fromARGB(34, 255, 62, 62)),
                    child: Text(
                      'UI/UX Course',
                      style: TextStyle(color: Color.fromARGB(255, 255, 62, 62)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: bodyHeight * 0.016),
              Text(
                'Kelas UI/UX Designer : Level Beginner',
                style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 20),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(height: bodyHeight * 0.024),
              Image.asset('images/vidioThumbnail.png'),
              SizedBox(height: bodyHeight * 0.016),
              Text(
                "Introduction",
                style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 16),
              ),
              SizedBox(height: bodyHeight * 0.016),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '27 materi',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(width: bodyHeight * 0.01),
                  Image.asset(
                    'images/separator.png',
                  ),
                  SizedBox(width: bodyHeight * 0.01),
                  Text(
                    '10 tugas',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(width: bodyHeight * 0.01),
                  Image.asset(
                    'images/separator.png',
                  ),
                  SizedBox(width: bodyHeight * 0.01),
                  Text(
                    '15 kuis',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(height: bodyHeight * 0.024),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Materi",
                    style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 16),
                  ),
                  SizedBox(height: bodyHeight * 0.016),
                  Container(
                    height: bodyHeight * 0.1,
                    padding: EdgeInsets.all(bodyHeight * 0.016),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(87, 158, 158, 158),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1. Pengenalan UI/UX dari 0',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                            SizedBox(height: bodyHeight * 0.004),
                            Text(
                              '12 menit',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset('images/lock.png'),
                        SizedBox(
                          width: bodyHeight * 0.012,
                        ),
                        Image.asset('images/chevron.png')
                      ],
                    ),
                  ),
                  SizedBox(height: bodyHeight * 0.012),
                  Container(
                    height: bodyHeight * 0.1,
                    padding: EdgeInsets.all(bodyHeight * 0.016),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(87, 158, 158, 158),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('2. Penerapan Design Thinking',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                            SizedBox(height: bodyHeight * 0.004),
                            Text(
                              '6 menit',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset('images/lock.png'),
                        SizedBox(
                          width: bodyHeight * 0.012,
                        ),
                        Image.asset('images/chevron.png')
                      ],
                    ),
                  ),
                  SizedBox(height: bodyHeight * 0.012),
                  Container(
                    height: bodyHeight * 0.1,
                    padding: EdgeInsets.all(bodyHeight * 0.016),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(87, 158, 158, 158),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('3. Dasar - dasar UX Research',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                            SizedBox(height: bodyHeight * 0.004),
                            Text(
                              '7 menit',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset('images/lock.png'),
                        SizedBox(
                          width: bodyHeight * 0.012,
                        ),
                        Image.asset('images/chevron.png')
                      ],
                    ),
                  ),
                  SizedBox(height: bodyHeight * 0.012),
                  Container(
                    height: bodyHeight * 0.1,
                    padding: EdgeInsets.all(bodyHeight * 0.016),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(87, 158, 158, 158),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('4. Prinsip Dasar User Interface',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                            SizedBox(height: bodyHeight * 0.004),
                            Text(
                              '7 menit',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset('images/lock.png'),
                        SizedBox(
                          width: bodyHeight * 0.012,
                        ),
                        Image.asset('images/chevron.png')
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.016,
              ),
              Container(
                alignment: Alignment.center,
                height: bodyHeight * 0.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color.fromARGB(181, 62, 137, 99),
                ),
                child: Text(
                  'Muat lainnya',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'InterSemiBold',
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Text(
                "Persyaratan umum",
                style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 16),
              ),
              SizedBox(height: bodyHeight * 0.016),
              Column(
                children: [
                  Container(
                    height: bodyHeight * 0.06,
                    padding: EdgeInsets.all(bodyHeight * 0.016),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(87, 158, 158, 158),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1. Pengenalan UI/UX dari 0',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                          ],
                        ),
                        Spacer(),
                        Image.asset('images/chevronbottom.png')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(bodyHeight * 0.016),
                      child: Text(
                        'Ya, materi ini merupakan materi yang sangat dasar. Mentor akan menjelaskan dari 0 terkait materi yang dipaparkan. Jadi, jangan takut untuk mengikuti kelas!',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Container(
                height: bodyHeight * 0.06,
                padding: EdgeInsets.all(bodyHeight * 0.016),
                decoration: BoxDecoration(
                    color: Color.fromARGB(87, 158, 158, 158),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bagaimana jika saya tidak mengerti?',
                            style: TextStyle(
                                fontFamily: 'InterSemiBold', fontSize: 14)),
                      ],
                    ),
                    Spacer(),
                    Image.asset('images/chevron.png')
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Container(
                height: bodyHeight * 0.06,
                padding: EdgeInsets.all(bodyHeight * 0.016),
                decoration: BoxDecoration(
                    color: Color.fromARGB(87, 158, 158, 158),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Apakah bisa konsultasi terkait materi?',
                            style: TextStyle(
                                fontFamily: 'InterSemiBold', fontSize: 14)),
                      ],
                    ),
                    Spacer(),
                    Image.asset('images/chevron.png')
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.124,
              ),
              GestureDetector(
                onTap: (() {
                  Get.toNamed('/checkout');
                }),
                child: Container(
                  alignment: Alignment.center,
                  height: bodyHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xff3E8964),
                  ),
                  child: Text(
                    'Beli kelas',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'InterSemiBold',
                        fontSize: 14),
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
