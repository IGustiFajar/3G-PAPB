import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';

class LihatMateriPage extends StatefulWidget {
  const LihatMateriPage({super.key});

  @override
  State<LihatMateriPage> createState() => _LihatMateriPageState();
}

class _LihatMateriPageState extends State<LihatMateriPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lihat materi'),
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
            children: [
              Row(
                children: [
                  Text(
                    'Materi kelas',
                    style: TextStyle(fontFamily: 'InterSemibold', fontSize: 16),
                  ),
                  Spacer(),
                  Container(
                      width: 36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(50, 158, 158, 158)),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Image.asset('images/share.png'))
                ],
              ),
              SizedBox(height: bodyHeight * 0.024),
              Container(
                padding: EdgeInsets.only(top: 4, bottom: 4, right: 8, left: 8),
                decoration: BoxDecoration(
                    color: Color.fromARGB(50, 62, 137, 99),
                    border: Border.all(color: Color.fromARGB(100, 62, 137, 99)),
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  'UI/UX Course',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 62, 137, 99)),
                ),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Text(
                'Kelas UI/UX Designer : Level Beginner',
                style: TextStyle(fontFamily: 'InterSemibold', fontSize: 20),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Image(image: AssetImage('images/Thumbnailmateri1.png')),
              SizedBox(height: bodyHeight * 0.024),
              Text(
                'Materi kelas',
                style: TextStyle(fontFamily: 'InterSemibold', fontSize: 16),
              ),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '27 Materi',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        ),
                        SizedBox(
                          width: bodyHeight * 0.006,
                        ),
                        Image(
                          image: AssetImage('images/Separatorseppar.png'),
                        ),
                        SizedBox(
                          width: bodyHeight * 0.006,
                        ),
                        Text(
                          '10 Tugas',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        ),
                        SizedBox(
                          width: bodyHeight * 0.006,
                        ),
                        Image(
                          image: AssetImage('images/Separatorseppar.png'),
                        ),
                        SizedBox(
                          width: bodyHeight * 0.006,
                        ),
                        Text(
                          '15 Kuis',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Text(
                'Materi',
                style: TextStyle(fontFamily: 'InterSemibold', fontSize: 16),
              ),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(50, 158, 158, 158))),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Pengenalan UI/UX dari 0',
                          style: TextStyle(fontFamily: 'InterSemiBold'),
                        ),
                        SizedBox(
                          height: bodyHeight * 0.004,
                        ),
                        Text(
                          '12 menit',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset('images/lock.png')
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.008),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(50, 158, 158, 158))),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2. Penerapan Design Thinking',
                          style: TextStyle(fontFamily: 'InterSemiBold'),
                        ),
                        SizedBox(
                          height: bodyHeight * 0.004,
                        ),
                        Text(
                          '6 menit',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset('images/lock.png')
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.008),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(50, 158, 158, 158))),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4. Prinsip Dasar User Interface',
                          style: TextStyle(fontFamily: 'InterSemiBold'),
                        ),
                        SizedBox(
                          height: bodyHeight * 0.004,
                        ),
                        Text(
                          '7 menit',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset('images/lock.png')
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.008),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(50, 158, 158, 158))),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3. Dasar - dasar UX Research',
                          style: TextStyle(fontFamily: 'InterSemiBold'),
                        ),
                        SizedBox(
                          height: bodyHeight * 0.004,
                        ),
                        Text(
                          '7 menit',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset('images/lock.png')
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Color.fromARGB(50, 62, 137, 99),
                  ),
                  color: Color.fromARGB(200, 62, 137, 99),
                ),
                padding:
                    EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
                child: Text(
                  'Muat lainnya',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Text(
                'Pertanyaan umum',
                style: TextStyle(fontFamily: 'InterSemibold', fontSize: 16),
              ),
              SizedBox(height: bodyHeight * 0.012),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(100, 158, 158, 158),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)),
                        border: Border.all(
                          color: Color.fromARGB(100, 158, 158, 158),
                        )),
                    child: Row(
                      children: [
                        Text(
                          'Apakah kelas ini cocok untuk pemula?',
                          style: TextStyle(fontFamily: 'InterSemibold'),
                        ),
                        Spacer(),
                        Image.asset('images/chevronDown.png')
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                        border: Border.all(
                          color: Color.fromARGB(100, 158, 158, 158),
                        )),
                    child: Text(
                        'Ya, materi ini merupakan materi yang sangat dasar. Mentor akan menjelaaskan dari 0 terkait materi yang dipaparkan. Jadi, jangan takut untuk mengikuti kelas!'),
                  )
                ],
              ),
              SizedBox(height: bodyHeight * 0.008),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color.fromARGB(100, 158, 158, 158),
                    )),
                child: Row(
                  children: [
                    Text(
                      'Apakah kelas ini cocok untuk pemula?',
                      style: TextStyle(fontFamily: 'InterSemibold'),
                    ),
                    Spacer(),
                    Image.asset('images/chevronDown.png')
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.008),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color.fromARGB(100, 158, 158, 158),
                    )),
                child: Row(
                  children: [
                    Text(
                      'Apakah kelas ini cocok untuk pemula?',
                      style: TextStyle(fontFamily: 'InterSemibold'),
                    ),
                    Spacer(),
                    Image.asset('images/chevronDown.png')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (() {
          Get.toNamed('/enrol');
        }),
        child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 62, 137, 99),
                border: Border.all(
                  color: Color.fromARGB(100, 158, 158, 158),
                )),
            padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
            child: Text(
              'Daftar kelas',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'InterSemiBold'),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
