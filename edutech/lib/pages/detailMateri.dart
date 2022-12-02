import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';

class DetailMateri extends StatelessWidget {
  const DetailMateri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
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
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Materi Kelas",
                          style: TextStyle(
                              fontFamily: 'InterSemiBold', fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                            width: 36,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Image.asset('images/share.png'))
                      ],
                    ),
                    SizedBox(height: bodyHeight * 0.024),
                    Text(
                      '5. UX Research',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(height: bodyHeight * 0.024),
                    Image.asset('images/detailmateri.png'),
                    SizedBox(height: bodyHeight * 0.024),
                    Text(
                      'Objektif Kelas',
                      style:
                          TextStyle(fontFamily: 'InterSemiBold', fontSize: 16),
                    ),
                    SizedBox(height: bodyHeight * 0.016),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(width: bodyHeight * 0.012),
                        Text('Mengetahui metode research',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14))
                      ],
                    ),
                    SizedBox(height: bodyHeight * 0.008),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(width: bodyHeight * 0.012),
                        Text('Mengimplementasikan metode research',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14))
                      ],
                    ),
                    SizedBox(height: bodyHeight * 0.008),
                    Row(
                      children: [
                        Image.asset('images/greencek.png'),
                        SizedBox(width: bodyHeight * 0.012),
                        Text('Menentukan research',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14))
                      ],
                    ),
                    SizedBox(height: bodyHeight * 0.024),
                    Text(
                      'Challenge',
                      style:
                          TextStyle(fontFamily: 'InterSemiBold', fontSize: 16),
                    ),
                    SizedBox(height: bodyHeight * 0.016),
                    Text('1. Membuat Portofolio',
                        style: TextStyle(color: Colors.black54, fontSize: 14)),
                    SizedBox(height: bodyHeight * 0.008),
                    Text('2. Membuat Website Portofolio',
                        style: TextStyle(color: Colors.black54, fontSize: 14)),
                    SizedBox(height: bodyHeight * 0.008),
                    Text('3. Membuat akun Linked.in',
                        style: TextStyle(color: Colors.black54, fontSize: 14)),
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
                    SizedBox(height: bodyHeight * 0.024),
                    Container(
                      alignment: Alignment.center,
                      height: bodyHeight * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color.fromARGB(221, 62, 137, 99),
                      ),
                      child: Text(
                        'Kirim tugas',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'InterSemiBold',
                            fontSize: 14),
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
