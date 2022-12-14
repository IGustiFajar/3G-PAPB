import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:edutech/pages/kelas.dart';
import 'package:path_provider/path_provider.dart';

class sertifikatPage extends StatefulWidget {
  const sertifikatPage({super.key});

  @override
  State<sertifikatPage> createState() => _sertifikatPageState();
}

class _sertifikatPageState extends State<sertifikatPage> {
  late Future<ListResult> futureFiles;
  final controller = TextEditingController();
  List<kelas> Kelas = allkelas;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/sertifikat').listAll();
  }

  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Sertifikat'),
        backgroundColor: Color.fromARGB(255, 62, 137, 99),
        elevation: 5,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: <Widget>[
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      width: 260,
                      child: Text(
                        "Capaian",
                        style: TextStyle(
                            fontFamily: 'InterSemiBold', fontSize: 16),
                      )),
                ],
              ),
              SizedBox(height: bodyHeight * 0.024),
              Text(
                'Sertifikat kelulusan kelas ????',
                style: TextStyle(fontFamily: 'InterSemiBold', fontSize: 20),
              ),
              SizedBox(
                height: bodyHeight * 0.008,
              ),
              Text(
                'Silahkan unduh untuk melihat detail sertifikat',
                style: TextStyle(
                    fontFamily: 'InterSemiBold',
                    fontSize: 12,
                    color: Colors.grey),
              ),
              SizedBox(height: bodyHeight * 0.024),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'images/certificate.png',
                ),
              ),
              FutureBuilder<ListResult>(
                future: futureFiles,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final files = snapshot.data!.items;
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: files.length,
                      itemBuilder: (context, index) {
                        final file = files[index];
                        return Card(
                            color: Colors.white,
                            child: ExpansionTile(
                              // childrenPadding: EdgeInsets.all(16.0),

                              leading: Icon(Icons.image_outlined),
                              // leading: Image.asset(file.

                              //   fit: BoxFit.cover,
                              //   width: bodyHeight * 0.050,
                              //   height: bodyHeight * 0.050,
                              // ),
                              // leading: Image.asset(file.bucket),
                              // trailing: Icon(Icons.download),
                              title: Text(
                                file.name,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 32, 32, 32),
                                    fontFamily: 'InterRegular'),
                              ),
                              children: [
                                Container(
                                  color: Colors.black12,
                                  padding: EdgeInsets.all(8.0),
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Image.asset('images/sertifikat.png'),
                                      // SizedBox(
                                      //   height: bodyHeight * 0.012,
                                      // ),
                                      GestureDetector(
                                        child: Container(
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      50, 158, 158, 158))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Unduh',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'InterSemiBold',
                                                  color: Color.fromARGB(
                                                      255, 62, 137, 99),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: bodyHeight * 0.008),
                                              Icon(
                                                  color: Color.fromARGB(
                                                      255, 62, 137, 99),
                                                  Icons.download),
                                            ],
                                          ),
                                        ),
                                        onTap: () => downloadFile(file),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ));
                      },
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text('Error nih'),
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation(
                        Color.fromARGB(255, 62, 137, 99),
                      ),
                    ));
                  }
                },
              ),
              SizedBox(
                height: bodyHeight * 0.024,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future downloadFile(Reference ref) async {
    // final dir = await getApplicationDocumentsDirectory();
    // final file = File('${dir.path}/${ref.name}');

    final url = await ref.getDownloadURL();

    final tempdir = await getTemporaryDirectory();
    final path = '${tempdir.path}/${ref.name}';
    await Dio().download(url, path);

    if (url.contains('.mp4')) {
      await GallerySaver.saveVideo(path, toDcim: true);
    } else if (url.contains('.png')) {
      await GallerySaver.saveImage(path, toDcim: true);
    } else if (url.contains('.jpg')) {
      await GallerySaver.saveImage(path, toDcim: true);

      // await ref.writeToFile(file);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Downloaded ${ref.name}'),
        ),
      );
    }
  }
}
