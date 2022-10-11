import 'package:edutech/pages/detailKelasPage.dart';
import 'package:edutech/pages/profilePage.dart';
import 'package:edutech/pages/BerandaPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

class kelasPage extends StatelessWidget {
  const kelasPage({super.key});

  Container MyArticles(String imageVal, String heading, String subHeading) {
    return Container(
      width: 250,
      child: Card(
        elevation: 2,
        child: Wrap(
          // direction: Axis.vertical,
          children: <Widget>[
            Center(
              child: Image(
                image:
                    ResizeImage(AssetImage(imageVal), width: 100, height: 100),
                alignment: Alignment.center,
              ),
            ),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 16,
                ),
                Icon(Icons.star, color: Colors.green, size: 16),
                const Icon(Icons.star, color: Colors.grey, size: 16),
                const Icon(Icons.star, color: Colors.grey, size: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        title: Text('ApSkil'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
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
                        'Mangusti Zacharias',
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
          padding: const EdgeInsets.all(15.0),
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
                    Container(
                      height: bodyHeight * 0.27,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MyArticles(
                              "images/image1.png",
                              "Kelas Product Management : Level Intermediate",
                              "Progress : 4 dari 8 Materi"),
                          MyArticles(
                              "images/image2.png",
                              "Full Stack Developer : Level Beginner",
                              "Progress : 7 dari 12 Materi"),
                          MyArticles("images/image1.png", "Pengantar UI/UX",
                              "Progress : 4 dari 8 Materi"),
                          MyArticles("images/image1.png", "Pengantar UI/UX",
                              "Progress : 4 dari 8 Materi"),
                        ],
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
                                        height: bodyHeight * 0.01,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Rp. 0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                          SizedBox(
                                            width: bodyHeight * 0.01,
                                          ),
                                          Container(
                                            child: Text(
                                              'Rp. 599.000',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
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
                                        height: bodyHeight * 0.01,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Rp. 1.750.000',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                          SizedBox(
                                            width: bodyHeight * 0.01,
                                          ),
                                          Container(
                                            child: Text(
                                              'Rp. 1.900.000',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
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
                      height: bodyHeight * 0.02,
                    ),
                    Container(
                      height: bodyHeight * 0.27,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MyArticles(
                              "images/image1.png",
                              "Kelas Product Management : Level Intermediate",
                              "Progress : 4 dari 8 Materi"),
                          MyArticles(
                              "images/image2.png",
                              "Full Stack Developer : Level Beginner",
                              "Progress : 7 dari 12 Materi"),
                          MyArticles("images/image1.png", "Pengantar UI/UX",
                              "Progress : 4 dari 8 Materi"),
                          MyArticles("images/image1.png", "Pengantar UI/UX",
                              "Progress : 4 dari 8 Materi"),
                        ],
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
                                        height: bodyHeight * 0.01,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Rp. 0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                          SizedBox(
                                            width: bodyHeight * 0.01,
                                          ),
                                          Container(
                                            child: Text(
                                              'Rp. 599.000',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
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
                                      ),
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
                                        height: bodyHeight * 0.01,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Rp. 1.750.000',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                          SizedBox(
                                            width: bodyHeight * 0.01,
                                          ),
                                          Container(
                                            child: Text(
                                              'Rp. 1.900.000',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
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
                ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        animationCurve: Curves.easeInOutCubic,
        backgroundColor: Colors.white10,
        color: Colors.white,
        items: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BerandaPage();
                  },
                ),
              );
            },
            icon: SvgPicture.asset(
              'images/home.svg',
              color: Colors.grey,
              alignment: Alignment.center,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'images/book.svg',
              color: Colors.grey,
              alignment: Alignment.center,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProfilePage();
                  },
                ),
              );
            },
            icon: SvgPicture.asset(
              'images/user.svg',
              color: Colors.grey,
              alignment: Alignment.center,
            ),
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;

  CustomListTile(this.icon, this.text);

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
          onTap: () => {},
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
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
