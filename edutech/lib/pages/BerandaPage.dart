import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:get/get.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final user = FirebaseAuth.instance.currentUser!;
  final _searchController = TextEditingController();

  String errorMessage = '';

  Future SignOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      errorMessage = '';
    } on FirebaseAuthException catch (error) {
      errorMessage = error.message!;
    }
    setState(() {});
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
            // IconButton(
            //   onPressed: () {
            //     Get.bottomSheet(
            //       Container(
            //         color: Colors.white,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText: 'Cari Sesuatu',
            //             // labelText: 'Cari Sesuatu',
            //             labelStyle: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 14,
            //                 fontFamily: 'InterRegular'),
            //             border: OutlineInputBorder(),
            //             prefixIcon: Icon(Icons.search),
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            //   icon: SvgPicture.asset(
            //     'images/search.svg',
            //     color: Colors.white,
            //     alignment: Alignment.center,
            //   ),
            // ),
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
            padding: const EdgeInsets.all(15.0),
            child: (isLandscape)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Halo ' + user.email!,
                        style: TextStyle(
                            fontSize: 14, fontFamily: "InterSemiBold"),
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
                            Text(
                              '30 menit menuju kelas “Kelas Product Management : Level Intermediate”',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'InterSemiBold',
                                  color: Color.fromARGB(255, 239, 144, 100)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Text(
                        'Kelas Berlangsung',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Container(height: bodyHeight * 0.6),
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
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                'Lihat semua',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Inter'),
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
                              title: Text(
                                  'Ini adalah Banner Kelas Populer ApSkil'),
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
                        'Halo ' + user.email!,
                        style: TextStyle(
                            fontSize: 14, fontFamily: "InterSemiBold"),
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
                            Text(
                              '30 menit menuju kelas “Kelas Product Management : Level Intermediate”',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'InterSemiBold',
                                  color: Color.fromARGB(255, 239, 144, 100)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Text(
                        'Kelas Berlangsung',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.01,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      fontFamily:
                                                          'InterSemiBold',
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  'Level Beginner',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'InterSemiBold',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      fontFamily:
                                                          'InterSemiBold',
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  'Level Intermediate',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'InterSemiBold',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      fontFamily:
                                                          'InterSemiBold',
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  'Level Intermediate',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'InterSemiBold',
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
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                'Lihat semua',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'InterSemiBold'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        height: bodyHeight * 0.48,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              width: 285,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: bodyHeight * 0.3,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8)),
                                          child: Image.asset(
                                              'images/imagePop.png'))),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: bodyHeight * 0.04,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 255, 62, 62)),
                                          color:
                                              Color.fromARGB(34, 255, 62, 62)),
                                      child: Text(
                                        'Fullstack Developer',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 62, 62)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      'Kelas Full Stack Developer : Level Beginner',
                                      style: TextStyle(
                                          fontFamily: 'InterSemiBold',
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 14),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Image.asset('images/Pathstar.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('4.5'),
                                          VerticalDivider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                          Image.asset('images/group.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('1.2k'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 285,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: bodyHeight * 0.3,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8)),
                                          child: Image.asset(
                                            'images/imagePop2.png',
                                          ))),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: bodyHeight * 0.04,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border:
                                              Border.all(color: Colors.grey),
                                          color: Color.fromARGB(19, 0, 0, 0)),
                                      child: Text(
                                        'Product Management',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(157, 0, 0, 0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      'Kelas Product Management : Level Beginner',
                                      style: TextStyle(
                                          fontFamily: 'InterSemiBold',
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 14),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Image.asset('images/Pathstar.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('4.5'),
                                          VerticalDivider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                          Image.asset('images/group.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('1.2k'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(horizontal: 20),
                              width: 285,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: bodyHeight * 0.3,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8)),
                                          child: Image.asset(
                                            'images/imagePop3.png',
                                          ))),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: bodyHeight * 0.04,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 62, 137, 99)),
                                          color:
                                              Color.fromARGB(36, 62, 137, 99)),
                                      child: Text(
                                        'UI/UX Designer',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 62, 137, 99)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      'Kelas Product Management : Level Beginner',
                                      style: TextStyle(
                                          fontFamily: 'InterSemiBold',
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 14),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Image.asset('images/Pathstar.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('4.5'),
                                          VerticalDivider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          ),
                                          Image.asset('images/group.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('1.2k'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
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
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'InterSemiBold'),
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
                                border: Border.all(color: Colors.grey),
                                color: Color.fromARGB(19, 0, 0, 0)),
                            child: Text(
                              'Product Management',
                              style: TextStyle(
                                  color: Color.fromARGB(157, 0, 0, 0)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: bodyHeight * 0.03),
                      Column(
                        children: [
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: bodyHeight * 1.30,
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
                                        height: bodyHeight * 0.012,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: bodyHeight * 0.03,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 62, 137, 99)),
                                            color: Color.fromARGB(
                                                41, 32, 235, 25)),
                                        child: Text(
                                          'UI/UX',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 62, 137, 99)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.015,
                                      ),
                                      Container(
                                        width: 175,
                                        child: Text(
                                          'Kelas UI/UX Designer : Level Beginner',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'InterSemiBold'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.015,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: <Widget>[
                                            Row(
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
                          SizedBox(height: bodyHeight * 0.02),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: bodyHeight * 1.30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/image4.png')),
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
                                        alignment: Alignment.center,
                                        height: bodyHeight * 0.03,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 62, 137, 99)),
                                            color: Color.fromARGB(
                                                41, 32, 235, 25)),
                                        child: Text(
                                          'UI/UX',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 62, 137, 99)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: bodyHeight * 0.01,
                                      ),
                                      Container(
                                        width: 175,
                                        child: Text(
                                          'Kelas UI/UX Designer : Level Intermediate',
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
                            height: 135,
                            width: 350,
                            decoration: new BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
          ),
        ));
    // bottomNavigationBar: SalomonBottomBar(
    //   currentIndex: _selectedIndex,
    //   onTap: (index) => onTapNav(index),
    //   items: navBottomItem,
    // ));
  }
}
