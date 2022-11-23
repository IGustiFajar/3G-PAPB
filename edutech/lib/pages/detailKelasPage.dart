import 'package:edutech/pages/kelasPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class KelasDetail extends StatefulWidget {
  const KelasDetail({super.key});

  @override
  State<KelasDetail> createState() => _KelasDetailState();
}

class _KelasDetailState extends State<KelasDetail> {
  final user = FirebaseAuth.instance.currentUser!;
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
          padding: const EdgeInsets.all(15.0),
          child: (isLandscape)
              ? IntrinsicWidth(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Detail Kelas',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.00005,
                      ),
                      Container(
                        height: bodyHeight * 0.8,
                        width: bodyHeight * 0.8,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/Thumbnailbeginner.png'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
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
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        child: Text(
                          'Kelas UI/UX Designer : Level Beginner',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'InterSemiBold'),
                        ),
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
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    '  (1215 Ulasan)',
                                    style: TextStyle(fontSize: 10),
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
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.01,
                      ),
                      Divider(
                        color: Colors.black26,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: bodyHeight * 0.01,
                      ),
                      Text(
                        'Tentang Kelas',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Text(
                        'Kelas User Interface/User experience merupakan bidang studi yang mempelajari aspek-aspek yang mempengaruhi interaksi antara manusia/user dan komputer serta cara-cara untuk meningkatkan kemudahan penggunaan komputer oleh user (usability).',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      Text(
                        'Pada level beginner ini students akan mempelajari pengenalan UI/UX dari Nol (0), Penerapan Design Thinking, dan Dasar-dasar UX research sebagai dasar untuk user dalam mempelajari bidang UI maupun UX.',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '27 Materi',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black38),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/Separatorseppar.png')),
                                  ),
                                ),
                                Text(
                                  '10 Tugas',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black38),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/Separatorseppar.png')),
                                  ),
                                ),
                                Text(
                                  '15 Kuis',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Image(
                              image:
                                  AssetImage('images/Thumbnailmateri1.png'))),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Text(
                        'Key Points',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('images/Iconcentang.png')),
                              SizedBox(width: 10),
                              Text(
                                'Mempelajari dasar Figma',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black38),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: bodyHeight * 0.01,
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('images/Iconcentang.png')),
                              SizedBox(width: 10),
                              Text(
                                'Membangun design fundamentals',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black38),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: bodyHeight * 0.01,
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('images/Iconcentang.png')),
                              SizedBox(width: 10),
                              Text(
                                'Belajar spacing design',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image:
                                        AssetImage('images/Groupsertif2.png')),
                                SizedBox(width: 10),
                                Text(
                                  'Dapatkan sertifikat kelulusan kelas! ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'InterSemiBold',
                                      color: Colors.red),
                                ),
                              ],
                            ),
                            height: 60,
                            width: 325,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(100, 245, 174, 171),
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Ulasan',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'InterSemiBold'),
                          ),
                          Text(
                            ' (1215 Ulasan)',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black38),
                          ),
                          Spacer(),
                          Text(
                            'Lihat semua',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.05,
                      ),
                      Container(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('images/rehan.jpg'),
                                radius: 30,
                              ),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: bodyHeight * 0.02,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Rehan',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'InterSemiBold'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2 hari lalu',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.03,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      SizedBox(
                                        width: bodyHeight * 0.01,
                                      ),
                                      Text(
                                        '5.0',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.03,
                                  ),
                                  Container(
                                    width: 500,
                                    child: Text(
                                      'Tools yang dikenalkan kepada kami sangat bermanfaat!',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: bodyHeight * 0.35,
                          width: bodyHeight * 5,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      SizedBox(
                        height: bodyHeight * 0.05,
                      ),
                      Container(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/profile.jpg'),
                                radius: 30,
                              ),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: bodyHeight * 0.02,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Cindy',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'InterSemiBold'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '5 hari lalu',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black38),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.03,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      SizedBox(
                                        width: bodyHeight * 0.01,
                                      ),
                                      Text(
                                        '5.0',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.03,
                                  ),
                                  Container(
                                    width: 500,
                                    child: Text(
                                      'Bener-bener keren banget materinya! U guys need this one!',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: bodyHeight * 0.35,
                          width: bodyHeight * 5,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      SizedBox(
                        height: bodyHeight * 0.06,
                      ),
                      Text(
                        'Kelas Terkait',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5),
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
                  ),
                )
              : IntrinsicWidth(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Detail Kelas',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.00005,
                      ),
                      Container(
                        height: bodyHeight * 0.5,
                        width: bodyHeight * 0.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/Thumbnailbeginner.png'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
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
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        child: Text(
                          'Kelas UI/UX Designer : Level Beginner',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'InterSemiBold'),
                        ),
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
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    '  (1215 Ulasan)',
                                    style: TextStyle(fontSize: 10),
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
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.01,
                      ),
                      Divider(
                        color: Colors.black26,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: bodyHeight * 0.01,
                      ),
                      Text(
                        'Tentang Kelas',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Text(
                        'Kelas User Interface/User experience merupakan bidang studi yang mempelajari aspek-aspek yang mempengaruhi interaksi antara manusia/user dan komputer serta cara-cara untuk meningkatkan kemudahan penggunaan komputer oleh user (usability).',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      Text(
                        'Pada level beginner ini students akan mempelajari pengenalan UI/UX dari Nol (0), Penerapan Design Thinking, dan Dasar-dasar UX research sebagai dasar untuk user dalam mempelajari bidang UI maupun UX.',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '27 Materi',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black38),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/Separatorseppar.png')),
                                  ),
                                ),
                                Text(
                                  '10 Tugas',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black38),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/Separatorseppar.png')),
                                  ),
                                ),
                                Text(
                                  '15 Kuis',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Image(image: AssetImage('images/Thumbnailmateri1.png')),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Text(
                        'Key Points',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('images/Iconcentang.png')),
                              SizedBox(width: 10),
                              Text(
                                'Mempelajari dasar Figma',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black38),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: bodyHeight * 0.01,
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('images/Iconcentang.png')),
                              SizedBox(width: 10),
                              Text(
                                'Membangun design fundamentals',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black38),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: bodyHeight * 0.01,
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: AssetImage('images/Iconcentang.png')),
                              SizedBox(width: 10),
                              Text(
                                'Belajar spacing design',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image:
                                        AssetImage('images/Groupsertif2.png')),
                                SizedBox(width: 10),
                                Text(
                                  'Dapatkan sertifikat kelulusan kelas! ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'InterSemiBold',
                                      color: Colors.red),
                                ),
                              ],
                            ),
                            height: 60,
                            width: 325,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(100, 245, 174, 171),
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Ulasan',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'InterSemiBold'),
                          ),
                          Text(
                            ' (1215 Ulasan)',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black38),
                          ),
                          Spacer(),
                          Text(
                            'Lihat semua',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Container(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('images/rehan.jpg'),
                                radius: 30,
                              ),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: bodyHeight * 0.02,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Rehan',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'InterSemiBold'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2 hari lalu',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.01,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      SizedBox(
                                        width: bodyHeight * 0.01,
                                      ),
                                      Text(
                                        '5.0',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.01,
                                  ),
                                  Container(
                                    width: 225,
                                    child: Text(
                                      'Tools yang dikenalkan kepada kami sangat bermanfaat!',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 130,
                          width: 350,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Container(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/profile.jpg'),
                                radius: 30,
                              ),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: bodyHeight * 0.02,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Cindy',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'InterSemiBold'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '5 hari lalu',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black38),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.01,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      Image(
                                          image: AssetImage(
                                              'images/Pathstar.png')),
                                      SizedBox(
                                        width: bodyHeight * 0.01,
                                      ),
                                      Text(
                                        '5.0',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: bodyHeight * 0.01,
                                  ),
                                  Container(
                                    width: 225,
                                    child: Text(
                                      'Bener-bener keren banget materinya! U guys need this one!',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 130,
                          width: 350,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      SizedBox(
                        height: bodyHeight * 0.04,
                      ),
                      Text(
                        'Kelas Terkait',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5),
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
                      SizedBox(
                        height: bodyHeight * 0.07,
                      ),
                      Divider(height: 1, thickness: 1, color: Colors.grey),
                      SizedBox(
                        height: bodyHeight * 0.024,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: bodyHeight * 0.06,
                              width: bodyHeight * 0.2,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Lihat Materi',
                                    style: TextStyle(
                                        fontFamily: 'InterSemiBold',
                                        fontSize: 14),
                                  ),
                                  SizedBox(width: 10),
                                  Image(image: AssetImage('images/eyeeye.png')),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: bodyHeight * 0.05,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: bodyHeight * 0.06,
                              width: bodyHeight * 0.2,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: Color(0xff3E8964),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Daftar Kelas',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'InterSemiBold',
                                        fontSize: 14),
                                  ),
                                  SizedBox(width: 10),
                                  Image(image: AssetImage('images/cl.png')),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ),
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
