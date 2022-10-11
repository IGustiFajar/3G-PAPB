import 'package:edutech/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:get/get.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  Container MyArticles(String imageVal, String heading, String subHeading) {
    return Container(
      width: 250,
      child: Card(
        elevation: 2,
        child: Wrap(
          // direction: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Image(
                  image:
                      ResizeImage(AssetImage(imageVal), width: 75, height: 75),
                  alignment: Alignment.center,
                ),
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('ApSkil'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
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
                      'Halo Mangusti Zacharias!',
                      style:
                          TextStyle(fontSize: 14, fontFamily: "InterSemiBold"),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.01,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 237, 220),
                        border: Border.all(
                            color: Color.fromARGB(255, 239, 144, 100),
                            width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '30 menit menuju kelas “Kelas Product Management : Level Intermediate”',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'InterSemiBold',
                                  color: Color.fromARGB(255, 239, 144, 100)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.03,
                    ),
                    Text(
                      'Kelas Berlangsung',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.02,
                    ),
                    Container(
                      height: bodyHeight * 0.6,
                      child: Expanded(
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
                    ),
                    SizedBox(
                      height: bodyHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          'Kelas Populer',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'InterSemiBold'),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            print('Lihat semua belum ada ya teman-teman');
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Lihat semua',
                              style:
                                  TextStyle(fontSize: 14, fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.02,
                    ),
                    Container(
                      height: bodyHeight * 0.3,
                      width: 450,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title:
                                Text('Ini adalah Banner Kelas Populer ApSkil'),
                          );
                        }),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/item1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/item2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/item3.png'),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Halo Mangusti Zacharias!',
                      style:
                          TextStyle(fontSize: 14, fontFamily: "InterSemiBold"),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.01,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 237, 220),
                        border: Border.all(
                            color: Color.fromARGB(255, 239, 144, 100),
                            width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '30 menit menuju kelas “Kelas Product Management : Level Intermediate”',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'InterSemiBold',
                                  color: Color.fromARGB(255, 239, 144, 100)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.02,
                    ),
                    Text(
                      'Kelas Berlangsung',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.01,
                    ),
                    Container(
                      height: bodyHeight * 0.3,
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
                      height: bodyHeight * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Kelas Populer',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'InterSemiBold'),
                        ),
                        Spacer(),
                        InkWell(
                          splashColor: Color.fromARGB(255, 62, 137, 99),
                          onTap: () {
                            print("Lihat semua belum ada ya teman-teman");
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Lihat semua',
                              style:
                                  TextStyle(fontSize: 14, fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.02,
                    ),
                    Container(
                      height: bodyHeight * 0.3,
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title:
                                Text('Ini adalah Banner Kelas Populer ApSkil'),
                          );
                        }),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/item1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/item2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/item3.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: bodyHeight * 0.02),
                    Text(
                      'Cari lebih banyak kelas',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
                    ),
                    SizedBox(height: bodyHeight * 0.03),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: bodyHeight * 0.04,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 62, 137, 99)),
                              color: Color.fromARGB(41, 32, 235, 25)),
                          child: Text(
                            'UI/UX',
                            style: TextStyle(
                                color: Color.fromARGB(255, 62, 137, 99)),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,
                          height: bodyHeight * 0.04,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              border: Border.all(color: Colors.black38),
                              color: Color.fromARGB(0, 32, 235, 25)),
                          child: Text(
                            'Product Management',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: bodyHeight * 0.2,
                            width: 100,
                            child: Image.asset('images/imageclass1.png')),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: bodyHeight * 0.04,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 62, 137, 99)),
                                  color: Color.fromARGB(41, 32, 235, 25)),
                              child: Text(
                                'UI/UX',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 62, 137, 99)),
                              ),
                            ),
                          ],
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
              final data = Get.toNamed('/beranda');
              print(data);
            },
            icon: SvgPicture.asset(
              'images/home.svg',
              color: Colors.green,
              alignment: Alignment.center,
            ),
          ),
          IconButton(
            onPressed: () {
              final data = Get.toNamed('/kelas');
              print(data);
            },
            icon: SvgPicture.asset(
              'images/book.svg',
              color: Colors.grey,
              alignment: Alignment.center,
            ),
          ),
          IconButton(
            onPressed: () {
              final data = Get.toNamed('/profil');
              print(data);
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
