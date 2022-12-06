import 'package:cool_alert/cool_alert.dart';
import 'package:edutech/pages/enrolKelas.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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

  Future Enrol() async {
    try {
      Get.offNamed('/enrol');
    } on FirebaseAuthException catch (error) {}
  }

  // late YoutubePlayerController _controller;

  // final videoURL =
  //     'https://www.youtube.com/watch?v=SJAVdeRIuKA&ab_channel=MattRadiant';

  // @override
  // void initState() {
  //   final videoID = YoutubePlayer.convertUrlToId(videoURL);
  //   _controller = YoutubePlayerController(
  //     initialVideoId: videoID!,
  //     flags: const YoutubePlayerFlags(
  //       autoPlay: false,
  //     ),
  //   );
  //   super.initState();
  // }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                      SizedBox(height: bodyHeight * 0.024),
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
                        height: bodyHeight * 0.016,
                      ),
                      Text(
                        'Kelas User Interface/User experience merupakan bidang studi yang mempelajari aspek-aspek yang mempengaruhi interaksi antara manusia/user dan komputer serta cara-cara untuk meningkatkan kemudahan penggunaan komputer oleh user (usability).',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      Text(
                        'Pada level beginner ini students akan mempelajari pengenalan UI/UX dari Nol (0), Penerapan Design Thinking, dan Dasar-dasar UX research sebagai dasar untuk user dalam mempelajari bidang UI maupun UX.',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      SizedBox(height: bodyHeight * 0.024),
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
                      SizedBox(height: bodyHeight * 0.024),
                      Container(
                          alignment: Alignment.center,
                          child: Image(
                              image:
                                  AssetImage('images/Thumbnailmateri1.png'))),
                      SizedBox(height: bodyHeight * 0.024),
                      Text(
                        'Key Points',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(height: bodyHeight * 0.024),
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
                      SizedBox(height: bodyHeight * 0.024),
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
                      SizedBox(height: bodyHeight * 0.024),
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
                                  SizedBox(height: bodyHeight * 0.024),
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
                                  SizedBox(height: bodyHeight * 0.024),
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
                                  SizedBox(height: bodyHeight * 0.024),
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
                                  SizedBox(height: bodyHeight * 0.024),
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
                      SizedBox(height: bodyHeight * 0.024),
                      GestureDetector(
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
                        height: bodyHeight * 0.012,
                      ),
                      Image.asset('images/ThumbnailbeginnerMain.png'),
                      SizedBox(height: bodyHeight * 0.024),
                      Container(
                        child: Text(
                          'UI/UX Course',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'InterSemiBold',
                              color: Color.fromARGB(255, 1, 133, 241)),
                        ),
                        height: 25,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(50, 33, 149, 243),
                          border: Border.all(
                              color: Color.fromARGB(100, 33, 149, 243)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.012,
                      ),
                      Container(
                        child: Text(
                          'Kelas UI/UX Designer : Level Beginner',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'InterSemiBold'),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.012,
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
                                    width: bodyHeight * 0.008,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(width: bodyHeight * 0.005),
                                  Text(
                                    '(1215 Ulasan)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.black26,
                              thickness: 1,
                            ),
                            Container(
                              height: 10,
                              width: 15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/usersuser.png')),
                              ),
                            ),
                            SizedBox(
                              width: bodyHeight * 0.008,
                            ),
                            Row(
                              children: [
                                Text(
                                  '1,2k',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: bodyHeight * 0.005,
                                ),
                                Text('pelajar',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12))
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.012,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp. 0',
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(
                            width: bodyHeight * 0.008,
                          ),
                          Text(
                            'Rp. 599.000',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black26,
                        thickness: 1,
                      ),
                      SizedBox(height: bodyHeight * 0.024),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(50, 33, 149, 243),
                            ),
                            color: Color.fromARGB(50, 33, 149, 243),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Image.asset('images/idea.png'),
                            SizedBox(
                              width: bodyHeight * 0.008,
                            ),
                            Text(
                              'Ketahui tentang alur belajar yang baik',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 33, 149, 243)),
                            ),
                            Spacer(),
                            Image.asset('images/chevronblue.png')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.024,
                      ),
                      Text(
                        'Tentang Kelas',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.016,
                      ),
                      Text(
                        'Kelas User Interface/User experience merupakan bidang studi yang mempelajari aspek-aspek yang mempengaruhi interaksi antara manusia/user dan komputer serta cara-cara untuk meningkatkan kemudahan penggunaan komputer oleh user (usability).',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      Text(
                        'Pada level beginner ini students akan mempelajari pengenalan UI/UX dari Nol (0), Penerapan Design Thinking, dan Dasar-dasar UX research sebagai dasar untuk user dalam mempelajari bidang UI maupun UX.',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                      SizedBox(height: bodyHeight * 0.024),
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
                      SizedBox(height: bodyHeight * 0.024),
                      // YoutubePlayer(
                      //   controller: _controller,
                      //   showVideoProgressIndicator: true,
                      //   onReady: () => debugPrint('Ready'),
                      //   bottomActions: [
                      //     CurrentPosition(),
                      //     ProgressBar(
                      //       isExpanded: true,
                      //       colors: const ProgressBarColors(
                      //         playedColor: Colors.amber,
                      //         handleColor: Colors.amberAccent,
                      //       ),
                      //     ),
                      //     const PlaybackSpeedButton(),
                      //   ],
                      // ),
                      SizedBox(height: bodyHeight * 0.024),
                      Text(
                        'Key Points',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(height: bodyHeight * 0.024),
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
                      SizedBox(height: bodyHeight * 0.024),
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
                              border: Border.all(
                                  color: Color.fromARGB(100, 244, 67, 54)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: bodyHeight * 0.024),
                      Row(
                        children: <Widget>[
                          Text(
                            'Ulasan',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'InterSemiBold'),
                          ),
                          SizedBox(width: bodyHeight * 0.008),
                          Text(
                            ' (1215 Ulasan)',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black38),
                          ),
                          Spacer(),
                          Text(
                            'Lihat semua',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.012,
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
                          height: bodyHeight * 0.15,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      SizedBox(
                        height: bodyHeight * 0.008,
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
                          height: bodyHeight * 0.15,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      SizedBox(
                        height: bodyHeight * 0.024,
                      ),
                      Text(
                        'Kelas Terkait',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.012,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
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
                        height: bodyHeight * 0.008,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image.asset(
                                    'images/Thumbnailbeginner2.png')),
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
                                        color: Color.fromARGB(50, 62, 137, 99),
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(255, 62, 137, 99),
                                        ),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text(
                                      'Product Management',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromARGB(255, 62, 137, 99)),
                                    ),
                                  ),
                                  SizedBox(height: bodyHeight * 0.008),
                                  Text(
                                    'Kelas Product',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'InterSemiBold'),
                                  ),
                                  Text(
                                    'Management : Level... ',
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
                                        'Rp. 259.000',
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
                        height: bodyHeight * 0.008,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image.asset(
                                    'images/Thumbnailbeginner2.png')),
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
                                        color: Color.fromARGB(49, 255, 187, 85),
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(255, 255, 187, 85),
                                        ),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text(
                                      'Fullstack Developer',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 255, 187, 85)),
                                    ),
                                  ),
                                  SizedBox(height: bodyHeight * 0.008),
                                  Text(
                                    'Kelas Fullstack',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'InterSemiBold'),
                                  ),
                                  Text(
                                    'Developer : Level... ',
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
                                        'Rp. 259.000',
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
                        height: bodyHeight * 0.07,
                      ),
                      Divider(
                          height: 1,
                          thickness: 2,
                          color: Color.fromARGB(100, 158, 158, 158)),
                      SizedBox(
                        height: bodyHeight * 0.024,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (() {
                              Get.toNamed('/lihatmaterienrol');
                            }),
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, right: 16, left: 16),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color.fromARGB(100, 158, 158, 158)),
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
                            width: bodyHeight * 0.04,
                          ),
                          GestureDetector(
                            onTap: () => {
                              CoolAlert.show(
                                context: context,
                                type: CoolAlertType.success,
                                text: 'Selamat kamu telah terdaftar',
                                confirmBtnText: 'Lanjutkan',
                                onConfirmBtnTap: Enrol,
                                confirmBtnColor:
                                    Color.fromARGB(255, 62, 137, 99),
                              ),
                            },
                            // onTap: () {
                            //   Get.toNamed('/enrol');
                            // },
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 8, bottom: 8, right: 16, left: 16),
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
                                    'Daftar kelas',
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
