import 'package:edutech/pages/page_utama.dart';
import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  Container MyArticles(String imageVal, String heading, String subHeading) {
    return Container(
      width: 150,
      height: 27,
      child: Card(
        elevation: 2,
        child: Wrap(
          children: <Widget>[
            SizedBox(width: 15),
            Image(
              image: ResizeImage(AssetImage(imageVal), width: 100, height: 100),
            ),
            SizedBox(
              width: 10,
            ),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 15),
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.green),
                const Icon(Icons.star, color: Colors.grey),
                const Icon(Icons.star, color: Colors.grey),
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
      // appBar: AppBar(title: Text("Page Dua")),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Cari Sesuatu',
            //   style: TextStyle(
            //     fontSize: 15,
            //     fontFamily: 'InterRegular',
            //   ),
            // ),
            SizedBox(
              height: 150,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0.0),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 62, 137, 99)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: 'Cari sesuatu',
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return PageDua();
                              },
                            ),
                          );
                        },
                        child: const Text('a'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(color: Colors.grey),
            SizedBox(
              height: 10,
            ),
            Text('Halo Gesa!'),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(249, 210, 168, 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '30 menit menuju kelas “Kelas Product Management : Level Intermediate”',
                      style:
                          TextStyle(fontSize: 12, fontFamily: 'InterSemiBold'),
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
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                height: 10,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    MyArticles(
                        "images/image1.png",
                        "Kelas Product Management : Level Intermediate",
                        "Rp. 0"),
                    MyArticles("images/image2.png",
                        "Full Stack Developer : Level Beginner", "Rp. 0"),
                    MyArticles("images/image1.png", "Pengantar UI/UX", "Rp. 0"),
                    MyArticles("images/image1.png", "Pengantar UI/UX", "Rp. 0"),
                  ],
                ),
              ),
            ),
            Text('Halo Gesa!'),
            Text('Halo Gesa!'),
            Text('Halo Gesa!'),
            Text('Halo Gesa!'),
            Text('Halo Gesa!'),
          ],
        ),
      ),
    );
  }
}
