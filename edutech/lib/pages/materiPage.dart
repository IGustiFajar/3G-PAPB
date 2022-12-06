import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
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
                            Border.all(color: Color.fromARGB(255, 62, 137, 99)),
                        color: Color.fromARGB(34, 62, 137, 99)),
                    child: Text(
                      'UI/UX Course',
                      style: TextStyle(
                          color: Color.fromARGB(255, 62, 137, 99),
                          fontSize: 14),
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
                        color: Color.fromARGB(85, 62, 137, 99),
                        border:
                            Border.all(color: Color.fromARGB(5, 158, 158, 158)),
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
                        Image.asset('images/benar.png'),
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
                        color: Color.fromARGB(85, 62, 137, 99),
                        border:
                            Border.all(color: Color.fromARGB(5, 158, 158, 158)),
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
                        Image.asset('images/benar.png'),
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
                        color: Color.fromARGB(85, 62, 137, 99),
                        border:
                            Border.all(color: Color.fromARGB(5, 158, 158, 158)),
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
                        Image.asset('images/benar.png'),
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
                        color: Color.fromARGB(85, 62, 137, 99),
                        border:
                            Border.all(color: Color.fromARGB(5, 158, 158, 158)),
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
                        Image.asset('images/benar.png'),
                        SizedBox(
                          width: bodyHeight * 0.012,
                        ),
                        Image.asset('images/chevron.png')
                      ],
                    ),
                  ),
                  SizedBox(height: bodyHeight * 0.012),
                  GestureDetector(
                    onTap: (() {
                      Get.toNamed('/detailmateri');
                    }),
                    child: Container(
                      height: bodyHeight * 0.1,
                      padding: EdgeInsets.all(bodyHeight * 0.016),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(0, 62, 137, 99),
                          border: Border.all(
                              color: Color.fromARGB(100, 158, 158, 158)),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('5. Peralatan UI/UX',
                                  style: TextStyle(
                                      fontFamily: 'InterSemiBold',
                                      fontSize: 14)),
                              SizedBox(height: bodyHeight * 0.004),
                              Text(
                                '24 menit',
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                            width: bodyHeight * 0.012,
                          ),
                          Image.asset('images/chevron.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: bodyHeight * 0.012),
                  Container(
                    height: bodyHeight * 0.1,
                    padding: EdgeInsets.all(bodyHeight * 0.016),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(0, 62, 137, 99),
                        border: Border.all(
                            color: Color.fromARGB(100, 158, 158, 158)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('6. User persona & user journey map',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                            SizedBox(height: bodyHeight * 0.004),
                            Text(
                              '24 menit',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Spacer(),
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
                        color: Color.fromARGB(0, 62, 137, 99),
                        border: Border.all(
                            color: Color.fromARGB(100, 158, 158, 158)),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('7. Final project',
                                style: TextStyle(
                                    fontFamily: 'InterSemiBold', fontSize: 14)),
                            SizedBox(height: bodyHeight * 0.004),
                            Text(
                              '43 menit',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Spacer(),
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
                height: bodyHeight * 0.024,
              ),
              Image.asset('images/sepparator.png'),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              DottedBorder(
                radius: Radius.circular(6),
                color: Color.fromARGB(100, 158, 158, 158),
                dashPattern: [12, 4],
                strokeWidth: 2,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset('images/buttonUpload.png'),
                      SizedBox(height: bodyHeight * 0.01),
                      Text(
                        'Upload final project',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'InterRegular'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
