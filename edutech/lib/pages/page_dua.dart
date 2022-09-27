import 'package:edutech/pages/page_tiga.dart';
import 'package:edutech/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  Container MyArticles(String imageVal, String heading, String subHeading) {
    return Container(
      height: 130,
      width: 200,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('ApSkil'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,

        // leading: (Image.asset(
        //   'images/logo.png',
        //   height: 24,
        //   width: 24,
        // )),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Cari Sesuatu',
          //   style: TextStyle(
          //     fontSize: 15,
          //     fontFamily: 'InterRegular',
          //   ),
          // ),
          // SizedBox(
          //   height: 0,
          //   // child: Container(
          //   //   child: Row(
          //   //     children: <Widget>[
          //   //       Expanded(
          //   //         child: TextField(
          //   //           decoration: InputDecoration(
          //   //             contentPadding: const EdgeInsets.symmetric(
          //   //                 vertical: 0.0, horizontal: -10.0),
          //   //             focusedBorder: OutlineInputBorder(
          //   //               borderRadius: BorderRadius.circular(8.0),
          //   //               borderSide: BorderSide(
          //   //                   color: Color.fromARGB(255, 62, 137, 99)),
          //   //             ),
          //   //             enabledBorder: OutlineInputBorder(
          //   //               borderRadius: BorderRadius.circular(8.0),
          //   //               borderSide: BorderSide(color: Colors.grey),
          //   //             ),
          //   //             hintText: 'Search...',
          //   //             prefixIcon: Icon(Icons.search),
          //   //           ),
          //   //         ),
          //   //       ),
          //   //       Spacer(),
          //   //       Expanded(
          //   //         // child: ElevatedButton(
          //   //         //   onPressed: () {
          //   //         //     Navigator.of(context).push(
          //   //         //       MaterialPageRoute(
          //   //         //         builder: (context) {
          //   //         //           return PageTiga();
          //   //         //         },
          //   //         //       ),
          //   //         //     );
          //   //         //   },
          //   //         child: Icon(
          //   //           Icons.notifications_outlined,
          //   //           color: Colors.grey,
          //   //         ),
          //   //         // ),
          //   //       ),
          //   //     ],
          //   //   ),
          //   // ),
          // )
          SizedBox(
            height: 20,
          ),
          Text(
            'Halo Mangusti Zacharias!',
            style: TextStyle(fontSize: 14, fontFamily: "InterSemiBold"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 237, 220),
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
            height: 20,
          ),
          Text(
            'Kelas Berlangsung',
            style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              // height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MyArticles("images/image1.png",
                      "Kelas Product Management : Level Intermediate", "Rp. 0"),
                  MyArticles("images/image2.png",
                      "Full Stack Developer : Level Beginner", "Rp. 0"),
                  MyArticles("images/image1.png", "Pengantar UI/UX", "Rp. 0"),
                  MyArticles("images/image1.png", "Pengantar UI/UX", "Rp. 0"),
                ],
              ),
            ),
          ),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
          Text('Halo Mangusti Zacharias!'),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        animationCurve: Curves.easeInOutCubic,
        backgroundColor: Colors.white10,
        color: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 24,
            color: Color.fromARGB(255, 62, 137, 99),
          ),
          Icon(
            Icons.class_outlined,
            size: 24,
            color: Colors.grey,
          ),
          Icon(
            Icons.person_outline,
            size: 24,
            color: Colors.grey,
          )
        ],
        onTap: (index) {
          //Handle button tap
        },
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
