import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PanduanPage extends StatefulWidget {
  const PanduanPage({super.key});

  @override
  State<PanduanPage> createState() => _PanduanPageState();
}

class _PanduanPageState extends State<PanduanPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text('Panduan Belajar'),
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
                'Flutter Developer 😎',
                style: TextStyle(fontSize: 20, fontFamily: 'InterSemiBold'),
              ),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(50, 158, 158, 158)),
                ),
                child: Image.asset(
                  'images/flutter.png',
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Text(
                'Overview',
                style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
              ),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Text(
                textAlign: TextAlign.justify,
                'Flutter Developer adalah seseorang yang bertanggung jawab untuk membuat aplikasi baik di Android, iOS, website dan desktop dengan Flutter SDK. Saat bekerja, fokus utama Flutter Developer berada di "sisi klien" yang berarti membuat tampilan aplikasi (UI) dapat digunakan dan dinikmati oleh user. Pekerjaan ini mencakup slicing desain, database, keamanan, dan arsitektur proyek. Bahasa pemrograman yang digunakan adalah Dart.',
                style: TextStyle(
                    color: Color.fromARGB(200, 0, 0, 0),
                    fontFamily: 'InterRegular'),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Text('Responbilities',
                  style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold')),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Row(
                children: [
                  Image.asset('images/greencek.png'),
                  SizedBox(
                    width: bodyHeight * 0.008,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Men-deploy aplikasi ke marketplace (Google',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                      Text('Play & Apple App Store)',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Row(
                children: [
                  Image.asset('images/greencek.png'),
                  SizedBox(
                    width: bodyHeight * 0.008,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Memastikan fungsionalitas dan UI berjalan',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                      Text('lancar',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Row(
                children: [
                  Image.asset('images/greencek.png'),
                  SizedBox(
                    width: bodyHeight * 0.008,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mengimplementasikan UI design ke dalam',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                      Text('aplikasi',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Row(
                children: [
                  Image.asset('images/greencek.png'),
                  SizedBox(
                    width: bodyHeight * 0.008,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Menentukan state management yang tepat',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Row(
                children: [
                  Image.asset('images/greencek.png'),
                  SizedBox(
                    width: bodyHeight * 0.008,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Menyusun struktur proyek aplikasi dengan ',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                      Text('desain yang baik dan menarik, mudah di tes',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                      Text('serta di-maintain',
                          style: TextStyle(
                              color: Color.fromARGB(200, 0, 0, 0),
                              fontFamily: 'InterRegular')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Text('Beberapa Tools yang sering digunakan',
                  style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold')),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Container(
                height: bodyHeight * 0.24,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/figma.png'),
                            SizedBox(
                              height: bodyHeight * 0.016,
                            ),
                            Text(
                              'Figma',
                              style: TextStyle(
                                  color: Color.fromARGB(200, 0, 0, 0),
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold'),
                            ),
                            Text(
                              'Software Gratis',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'InterRegular'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: bodyHeight * 0.008,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/firebase.png'),
                            SizedBox(
                              height: bodyHeight * 0.016,
                            ),
                            Text(
                              'Firebase',
                              style: TextStyle(
                                  color: Color.fromARGB(200, 0, 0, 0),
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold'),
                            ),
                            Text(
                              'Software Gratis',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'InterRegular'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: bodyHeight * 0.008,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/postman.png'),
                            SizedBox(
                              height: bodyHeight * 0.016,
                            ),
                            Text(
                              'Postman',
                              style: TextStyle(
                                  color: Color.fromARGB(200, 0, 0, 0),
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold'),
                            ),
                            Text(
                              'Software Gratis',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'InterRegular'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: bodyHeight * 0.008,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/vscode.png'),
                            SizedBox(
                              height: bodyHeight * 0.016,
                            ),
                            Text(
                              'Visual Studio Code',
                              style: TextStyle(
                                  color: Color.fromARGB(200, 0, 0, 0),
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold'),
                            ),
                            Text(
                              'Software Gratis',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'InterRegular'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: bodyHeight * 0.008,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/codemagic.png'),
                            SizedBox(
                              height: bodyHeight * 0.016,
                            ),
                            Text(
                              'Codemagic',
                              style: TextStyle(
                                  color: Color.fromARGB(200, 0, 0, 0),
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold'),
                            ),
                            Text(
                              'Software Gratis',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'InterRegular'),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Text('Biasanya yang dibutuhkan saat lamar kerja',
                  style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold')),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(50, 158, 158, 158))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(
                          width: bodyHeight * 0.008,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Memiliki pengetahuan tentang database.',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.008,
                    ),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(
                          width: bodyHeight * 0.008,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Memiliki pengetahuan tentang metodologi',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                            Text('software development.',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.008,
                    ),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(
                          width: bodyHeight * 0.008,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Menguasai bahasa pemrograman seperti',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                            Text('Dart, Kotlin, Swift dan lain-lain.',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.008,
                    ),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(
                          width: bodyHeight * 0.008,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mampu menggunakan version control',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                            Text('tools seperti Git',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.008,
                    ),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(
                          width: bodyHeight * 0.008,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mampu memanajemen libraries dan API',
                                style: TextStyle(
                                    color: Color.fromARGB(200, 0, 0, 0),
                                    fontFamily: 'InterRegular')),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.024,
                    ),
                    Text('Average Salary',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold')),
                    SizedBox(
                      height: bodyHeight * 0.012,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rp. ',
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'InterSemiBold',
                            color: Color.fromARGB(255, 4, 56, 30),
                          ),
                        ),
                        Text(
                          '145jt',
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'InterSemiBold',
                            color: Color.fromARGB(255, 62, 137, 99),
                          ),
                        ),
                        Text(
                          '/tahun',
                          style: TextStyle(
                            fontFamily: 'InterRegular',
                            color: Color.fromARGB(255, 4, 56, 30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: bodyHeight * 0.008),
                    Text(
                      'Source: Glassdoor',
                      style: TextStyle(
                        color: Color.fromARGB(100, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
