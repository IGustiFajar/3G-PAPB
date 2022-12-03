import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:edutech/pages/BerandaPage.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:edutech/pages/profilePage.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentindex = 0;

  List pages = [BerandaPage(), kelasPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentindex],
      bottomNavigationBar: ConvexAppBar(
          color: Colors.white,
          style: TabStyle.reactCircle,
          backgroundColor: Color.fromARGB(255, 62, 137, 99),
          items: [
            TabItem(icon: Icons.home_outlined, title: 'Beranda'),
            TabItem(icon: Icons.book_outlined, title: 'Kelas'),
            TabItem(icon: Icons.person_outlined, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) {
            setState(() {
              _currentindex = i;
            });
          }),
    );
  }
}
