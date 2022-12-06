import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EnrolKelas extends StatelessWidget {
  const EnrolKelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text('Kelas'),
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
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Image.asset('images/berhasil.png'),
              SizedBox(height: bodyHeight * 0.024),
              Text(
                'Pendaftaran berhasil',
                style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 20),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Text(
                'Rp. 0',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontFamily: 'InterSemiBold'),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Color.fromARGB(50, 158, 158, 158)),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                        child: Image.asset('images/Thumbnailbeginner.png')),
                    SizedBox(width: bodyHeight * 0.016),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                top: 4, bottom: 4, right: 8, left: 8),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(50, 33, 149, 243),
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(6)),
                            child: Text(
                              'UI/UX',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          ),
                          SizedBox(height: bodyHeight * 0.008),
                          Text(
                            'Kelas UI/UX Designer :',
                            style: TextStyle(
                                fontSize: 14, fontFamily: 'InterSemiBold'),
                          ),
                          Text(
                            'Level Intermediate',
                            style: TextStyle(
                                fontSize: 14, fontFamily: 'InterSemiBold'),
                          ),
                          SizedBox(height: bodyHeight * 0.008),
                          Row(
                            children: [
                              Text('Rp. 0'),
                              SizedBox(
                                width: bodyHeight * 0.012,
                              ),
                              Text(
                                'Rp. 199.000',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          SizedBox(height: bodyHeight * 0.008),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset('images/yellowstar.png'),
                                  SizedBox(width: bodyHeight * 0.008),
                                  Text('4.5')
                                ],
                              ),
                              SizedBox(width: bodyHeight * 0.008),
                              Image.asset('images/separatorvertikal.png'),
                              SizedBox(width: bodyHeight * 0.008),
                              Row(
                                children: [
                                  Image.asset('images/usersuser.png'),
                                  SizedBox(width: bodyHeight * 0.008),
                                  Text('1.2k')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              GestureDetector(
                onTap: (() {
                  Get.toNamed('/materi');
                }),
                child: Container(
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 62, 137, 99),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Color.fromARGB(255, 62, 137, 99),
                        )),
                    child: Text(
                      'Akses kelas',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'InterSemiBold'),
                    )),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Divider(
                  height: 1,
                  thickness: 1,
                  color: Color.fromARGB(101, 158, 158, 158)),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Tentang Kelas',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "InterSemiBold",
                    )),
              ),
              SizedBox(
                height: bodyHeight * 0.016,
              ),
              Text(
                'Kelas User Interface/User experience merupakan bidang studi yang mempelajari aspek-aspek yang mempengaruhi interaksi antara manusia/user dan komputer serta cara-cara untuk meningkatkan kemudahan penggunaan komputer oleh user (usability). Pada level beginner ini students akan mempelajari pengenalan UI/UX dari Nol (0), Penerapan Design Thinking, dan Dasar-dasar UX research sebagai dasar untuk user dalam mempelajari bidang UI maupun UX.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14, color: Colors.black38),
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(50, 62, 137, 99),
                    border: Border.all(color: Color.fromARGB(50, 62, 137, 99)),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Image.asset('images/iconPromo.png'),
                    SizedBox(width: bodyHeight * 0.008),
                    Text(
                      'Belajar nyaman, ApkSil mantap',
                      style: TextStyle(
                          color: Color.fromARGB(255, 62, 137, 99),
                          fontSize: 14,
                          fontFamily: 'InterSemiBold'),
                    ),
                    Spacer(),
                    Image.asset('images/chevronGreen.png')
                  ],
                ),
              ),
              SizedBox(
                height: bodyHeight * 0.012,
              ),
              SizedBox(width: bodyHeight * 0.008),
            ],
          ),
        ));
  }
}
