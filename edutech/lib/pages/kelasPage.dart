import 'package:anim_search_bar/anim_search_bar.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

class kelasPage extends StatefulWidget {
  const kelasPage({super.key});

  @override
  State<kelasPage> createState() => _kelasPageState();
}

class _kelasPageState extends State<kelasPage> {
  final user = FirebaseAuth.instance.currentUser!;
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelas'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        actions: <Widget>[
          AnimSearchBar(
            width: 300,
            style: TextStyle(color: Colors.white),
            color: Color.fromARGB(255, 62, 137, 99),
            textController: _searchController,
            onSuffixTap: () {
              setState(() {
                _searchController.clear();
              });
            },
          ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: (isLandscape)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Kelas Berlangsung',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.02,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Get.toNamed('/materi');
                      }),
                      child: Container(
                        height: bodyHeight * 0.21,
                        child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 255,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Row(
                                        children: [
                                          Image.asset('images/kelasBer2.png'),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Full Stack Developer : ',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Level Beginner',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Image.asset('images/progressBar.png'),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Row(
                                      children: [
                                        Text('5 materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14)),
                                        Spacer(),
                                        Text('16 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 112, 112, 112))),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('16 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset(
                                          'images/separator.png',
                                        ),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('7 Tugas',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset('images/separator.png'),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('15 Kuis',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 255,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Row(
                                        children: [
                                          Image.asset('images/kelasBer.png'),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kelas Product Management : ',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Level Intermediate',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Image.asset('images/progressBar.png'),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Row(
                                      children: [
                                        Text('4 materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14)),
                                        Spacer(),
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 112, 112, 112))),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset(
                                          'images/separator.png',
                                        ),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('10 Tugas',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset('images/separator.png'),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('15 Kuis',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 255,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Row(
                                        children: [
                                          Image.asset('images/kelasBer3.png'),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kelas Product Management : ',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Level Intermediate',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Image.asset('images/progressBar.png'),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Row(
                                      children: [
                                        Text('4 materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14)),
                                        Spacer(),
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 112, 112, 112))),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset(
                                          'images/separator.png',
                                        ),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('10 Tugas',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset('images/separator.png'),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('15 Kuis',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.03,
                    ),
                    Text(
                      'Jelajahi Kursus atau materi sesuai minat & bakat yang kamu inginkan!',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.03,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Text(
                              'UI/UX',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'InterSemiBold',
                                  color: Colors.green),
                            ),
                            height: 30,
                            width: 75,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: Colors.greenAccent,
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(width: bodyHeight * 0.01),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Text(
                              'Product Management',
                              style: TextStyle(
                                  fontSize: 16, fontFamily: 'InterSemiBold'),
                            ),
                            height: 30,
                            width: 200,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.03,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          //UI/UX Course
                          onTap: () {
                            final data = Get.toNamed('/kelas-detail');
                            print(data);
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/image3.png')),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                  ),
                                ),
                                SizedBox(width: bodyHeight * 0.01),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Container(
                                        child: Text(
                                          'UI/UX Course',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'InterSemiBold',
                                              color: Colors.blue),
                                        ),
                                        height: 25,
                                        width: 100,
                                        alignment: Alignment.center,
                                        decoration: new BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Container(
                                        width: 175,
                                        child: Text(
                                          'Kelas UI/UX Designer : level Beginner',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'InterSemiBold'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.025,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 10,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'images/Pathstar.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: bodyHeight * 0.005,
                                                  ),
                                                  Text(
                                                    '4.5',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: Colors.black26,
                                              thickness: 1,
                                            ),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 10,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'images/usersuser.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: bodyHeight * 0.005,
                                                  ),
                                                  Text(
                                                    '1,2k',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            height: 130,
                            width: 350,
                            decoration: new BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: bodyHeight * 0.01,
                        ),
                        GestureDetector(
                          //Intermediate
                          onTap: () {},
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/image3.png')),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                  ),
                                ),
                                SizedBox(width: bodyHeight * 0.01),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Container(
                                        child: Text(
                                          'UI/UX Course',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'InterSemiBold',
                                              color: Colors.blue),
                                        ),
                                        height: 25,
                                        width: 100,
                                        alignment: Alignment.center,
                                        decoration: new BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Container(
                                        width: 175,
                                        child: Text(
                                          'Kelas UI/UX Designer : level Intermediate',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'InterSemiBold'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.025,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 10,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'images/Pathstar.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: bodyHeight * 0.005,
                                                  ),
                                                  Text(
                                                    '4.5',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: Colors.black26,
                                              thickness: 1,
                                            ),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 10,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'images/usersuser.png')),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: bodyHeight * 0.005,
                                                  ),
                                                  Text(
                                                    '1,2k',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            height: 130,
                            width: 350,
                            decoration: new BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Kelas Berlangsung',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.012,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Get.toNamed('/materi');
                      }),
                      child: Container(
                        height: bodyHeight * 0.21,
                        child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 255,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Row(
                                        children: [
                                          Image.asset('images/kelasBer2.png'),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Full Stack Developer : ',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Level Beginner',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Image.asset('images/progressBar.png'),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Row(
                                      children: [
                                        Text('5 materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14)),
                                        Spacer(),
                                        Text('16 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 112, 112, 112))),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('16 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset(
                                          'images/separator.png',
                                        ),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('7 Tugas',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset('images/separator.png'),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('15 Kuis',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 255,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Row(
                                        children: [
                                          Image.asset('images/kelasBer.png'),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kelas Product Management : ',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Level Intermediate',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Image.asset('images/progressBar.png'),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Row(
                                      children: [
                                        Text('4 materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14)),
                                        Spacer(),
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 112, 112, 112))),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset(
                                          'images/separator.png',
                                        ),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('10 Tugas',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset('images/separator.png'),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('15 Kuis',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 255,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Row(
                                        children: [
                                          Image.asset('images/kelasBer3.png'),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kelas Product Management : ',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                'Level Intermediate',
                                                style: TextStyle(
                                                    fontFamily: 'InterSemiBold',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Image.asset('images/progressBar.png'),
                                    SizedBox(height: bodyHeight * 0.01),
                                    Row(
                                      children: [
                                        Text('4 materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14)),
                                        Spacer(),
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 112, 112, 112))),
                                      ],
                                    ),
                                    SizedBox(height: bodyHeight * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('8 Materi',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset(
                                          'images/separator.png',
                                        ),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('10 Tugas',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12)),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Image.asset('images/separator.png'),
                                        SizedBox(width: bodyHeight * 0.01),
                                        Text('15 Kuis',
                                            style: TextStyle(
                                                fontFamily: 'InterRegular',
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.024,
                    ),
                    Text(
                      'Jelajahi Kursus atau materi sesuai minat & bakat yang kamu inginkan!',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.012,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 4, bottom: 4, left: 8, right: 8),
                            child: Text(
                              'UI/UX',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold',
                                  color: Color.fromARGB(255, 62, 137, 99)),
                            ),
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(50, 62, 137, 99),
                              border: Border.all(
                                  color: Color.fromARGB(255, 62, 137, 99)),
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                        ),
                        SizedBox(width: bodyHeight * 0.01),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 4, bottom: 4, left: 8, right: 8),
                            child: Text(
                              'Product Management',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'InterRegular'),
                            ),
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(200, 158, 158, 158)),
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.012,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Get.toNamed('kelas-detail');
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image.asset(
                                    'images/Thumbnailbeginner.png')),
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
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                  ),
                                  SizedBox(height: bodyHeight * 0.008),
                                  Text(
                                    'Kelas UI/UX Designer :',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'InterSemiBold'),
                                  ),
                                  Text(
                                    'Level Beginner',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'InterSemiBold'),
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
                                      Image.asset(
                                          'images/separatorvertikal.png'),
                                      SizedBox(width: bodyHeight * 0.008),
                                      Row(
                                        children: [
                                          Image.asset('images/usersuser.png'),
                                          SizedBox(width: bodyHeight * 0.008),
                                          Text('1,2k')
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
                    ),
                    SizedBox(height: bodyHeight * 0.012),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              child:
                                  Image.asset('images/Thumbnailbeginner2.png')),
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
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.blue),
                                  ),
                                ),
                                SizedBox(height: bodyHeight * 0.008),
                                Text(
                                  'Kelas UI/UX Designer :',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'InterSemiBold'),
                                ),
                                Text(
                                  'Level Intermediate',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'InterSemiBold'),
                                ),
                                SizedBox(height: bodyHeight * 0.008),
                                Row(
                                  children: [
                                    Text('Rp. 0'),
                                    SizedBox(
                                      width: bodyHeight * 0.012,
                                    ),
                                    Text(
                                      'Rp. 249.000',
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
                                        Text('4.0')
                                      ],
                                    ),
                                    SizedBox(width: bodyHeight * 0.008),
                                    Image.asset('images/separatorvertikal.png'),
                                    SizedBox(width: bodyHeight * 0.008),
                                    Row(
                                      children: [
                                        Image.asset('images/usersuser.png'),
                                        SizedBox(width: bodyHeight * 0.008),
                                        Text('1k')
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
                    Text(
                      'Ketahui tentang alur belajar yang baik',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.012,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Get.toNamed('/panduan');
                      }),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(100, 33, 149, 243),
                            ),
                            color: Color.fromARGB(50, 33, 149, 243),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Image.asset('images/idea.png'),
                            SizedBox(
                              width: bodyHeight * 0.012,
                            ),
                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                  color: Color.fromARGB(215, 33, 149, 243)),
                            ),
                            Spacer(),
                            Image.asset('images/chevronblue.png')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: bodyHeight * 0.008),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(100, 62, 137, 99),
                          ),
                          color: Color.fromARGB(50, 62, 137, 99),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/idea.png',
                            color: Color.fromARGB(255, 62, 137, 99),
                          ),
                          SizedBox(
                            width: bodyHeight * 0.012,
                          ),
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                                color: Color.fromARGB(255, 62, 137, 99)),
                          ),
                          Spacer(),
                          Image.asset(
                            'images/chevronblue.png',
                            color: Color.fromARGB(255, 62, 137, 99),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: bodyHeight * 0.008),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(100, 255, 106, 96),
                          ),
                          color: Color.fromARGB(50, 255, 106, 96),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/idea.png',
                            color: Color.fromARGB(255, 255, 106, 96),
                          ),
                          SizedBox(
                            width: bodyHeight * 0.012,
                          ),
                          Text(
                            'Fullstack Developer',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 106, 96)),
                          ),
                          Spacer(),
                          Image.asset(
                            'images/chevronblue.png',
                            color: Color.fromARGB(255, 255, 106, 96),
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
    // TODO: implement build
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
                // Icon(Icons.logout_outlined),
                // Text('Logout'),
                Icon(Icons.arrow_right_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
