import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        title: const Text('Notification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Baru saja',
              style: TextStyle(
                  color: Color.fromARGB(255, 122, 122, 122),
                  fontSize: 14,
                  fontFamily: 'InterSemiBold'),
            ),
            SizedBox(height: bodyHeight * 0.01),
            Container(
              width: bodyHeight * 2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(1, 2), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kamu baru saja membeli kelas Fullstack Developer: Level Beginner ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'InterRegular',
                        fontSize: 12),
                  ),
                  Text(
                    'Silahkan lakukan konsultasi dengan mentor terbaik di kelas Fullstack Developer: Level Beginner',
                    style: TextStyle(fontFamily: 'InterRegular', fontSize: 12),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.02,
            ),
            Text(
              '1 hari lalu',
              style: TextStyle(
                  color: Color.fromARGB(255, 122, 122, 122),
                  fontSize: 14,
                  fontFamily: 'InterSemiBold'),
            ),
            SizedBox(height: bodyHeight * 0.01),
            Container(
              width: bodyHeight * 2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(1, 2), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang di ApSkil👋!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'InterRegular',
                        fontSize: 12),
                  ),
                  Text(
                    'Ambil kesempatanmu untuk mendapatkan kursus gratis!',
                    style: TextStyle(fontFamily: 'InterRegular', fontSize: 12),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
