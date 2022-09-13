import 'package:edutech/pages/page_dua.dart';
import 'package:edutech/pages/page_utama.dart';
import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Page Dua")),
      body: Padding(
        padding: EdgeInsets.all(16),
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
              height: 20,
            ),
            SizedBox(
              height: 36,
              width: 294,
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
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return PageTiga();
                              },
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(color: Colors.grey),
            SizedBox(
              height: 24,
            ),
            Text('Halo Gesa!'),
            SizedBox(
              height: 10,
              width: 324,
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
              height: 24,
              width: 324,
            ),
            Text(
              'Kelas Berlangsung',
              style: TextStyle(fontSize: 16, fontFamily: 'InterSemiBold'),
            ),
            Expanded(
              child: Container(
                height: 172,
                color: Color.fromARGB(255, 251, 251, 251),
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("images/apple.png"),
                          flex: 0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: ListTile(
                                title: Text(
                                  "Kelas Product Management: Level Intermediate",
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'InterRegular'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    child: Text("8 Materi"),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return PageUtama();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  TextButton(
                                    child: Text("10 Tugas"),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  TextButton(
                                    child: Text("15 Kuis"),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
