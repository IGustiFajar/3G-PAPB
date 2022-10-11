import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});
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
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 2),
                      // height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MyArticles(
                              "images/image1.png",
                              "Kelas Product Management : Level Intermediate",
                              "Rp. 0"),
                          MyArticles("images/image2.png",
                              "Full Stack Developer : Level Beginner", "Rp. 0"),
                          MyArticles(
                              "images/image1.png", "Pengantar UI/UX", "Rp. 0"),
                          MyArticles(
                              "images/image1.png", "Pengantar UI/UX", "Rp. 0"),
                        ],
                      ),
                    ),
                  ),
                  Text('Halo Mangusti Zacharias!'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
